# Usage:
# ruby process_log_file.rb [Uncompressed log file]

require 'csv'

input_file = ARGV[0]

# Monkey Patch String Class
class String
  def between(token_start, token_end)
    self[/#{Regexp.escape(token_start)}(.*?)#{Regexp.escape(token_end)}/m, 1]
  end
end

class TX
  attr_reader :log_string, :slot, :account_keys, :writable_accounts, :tx_cost,
              :instructions, :log_line

  def initialize(log_line)
    @log_line = log_line
  end

  def parse
    @slot = @log_line
            .between('slot', ',')
            .strip

    @account_keys = @log_line
                    .between('account_keys: [', ']')
                    .split(', ')

    @writable_accounts = @log_line
                         .between('writable_accounts: [', ']')
                         .split(', ')

    @tx_cost = @log_line
               .between('bpf_execution_cost:', ', ')
               .strip
               .to_i rescue 0

    instr = @log_line.between('instructions: [', '] } }), message_hash:')
    instr = @log_line.between('instructions: [', '] }), message_hash:') if instr.nil?
    
    @instructions = instr
                    .strip
                    .split('CompiledInstruction ')
    # @transaction = @log_line.between('')
    return true
  rescue StandardError => e
    puts @log_line
    puts e.message
    puts e.backtrace
    puts ''
    return false
  end
end

program_names = {
  'cjg3oHmg9uuPsP8D6g29NWvhySJkdYdAo9D25PRbKXJ' => 'Chainlink OCR2 Oracle Program'
}

# Set up slot stats hash
slot_stats = {}

hot_accounts = {}
hot_accounts_writable = {}
hot_programs = {}
hot_signers = {}
programs_seen = []
# slots_seen = []
heavy_programs = {}

i = 0
File.foreach(input_file) do |line|
  # next unless line.include?('WouldExceedAccountMaxLimit')
  # puts line
  # puts ''
  next if line.nil?

  tx = TX.new(line)
  # puts tx.log_line
  # puts ''
  parsed = tx.parse
  next unless parsed

  # Update hot_accounts
  # next if tx.account_keys.nil?
  tx.account_keys.each do |wa|
    hot_accounts[wa] = 0 if hot_accounts[wa].nil?
    hot_accounts[wa] += 1
  end

  # Update hot writable account
  # next if tx.writable_accounts.nil?
  tx.writable_accounts.each do |wa|
    hot_accounts_writable[wa] = 0 if hot_accounts_writable[wa].nil?
    hot_accounts_writable[wa] += 1
  end

  # Hot signers
  signer = tx.writable_accounts[0]
  hot_signers[signer] = 0 if hot_signers[signer].nil?
  hot_signers[signer] += 1

  # hot_programs
  # puts 'INSTRUCTIONS:'
  tx.instructions.each do |i|
    next if i == ''

    # puts i
    # puts ''

    program_id_index = i.between('program_id_index:', ', acc').strip.to_i
    program_id = tx.account_keys[program_id_index]

    unless programs_seen.include?(program_id)
      programs_seen << program_id
    end
  end

  slot_stats[tx.slot] = {} if slot_stats[tx.slot].nil?
  slot_stats[tx.slot][:tx_cost] = 0 if slot_stats[tx.slot][:tx_cost].nil?
  slot_stats[tx.slot][:tx_cost] += tx.tx_cost
  # Write out the slot_stats
  # puts tx.instructions.inspect
  # puts slot_stats.inspect
  # puts tx.slot
  # puts tx.account_keys.inspect
  # puts tx.writable_accounts.inspect
  # puts tx.tx_cost
  # puts ''

  i += 1
  # break if i == 4
end

hot_accounts.each do |k,v|
  next unless programs_seen.include?(k)
  hot_programs[k] = v
end

hot_accounts.delete_if {|k, v| programs_seen.include?(k) }

puts ''
puts "#{i} lines"
puts ''
puts "HOT WRITABLE ACCOUNTS:"
hot_accounts_writable.sort_by(&:last).reverse[0..29].to_h.each do |k,v|
  puts "#{k.ljust(44, ' ')} => #{v}"
end
puts ''
puts "HOT SIGNERS:"
hot_signers.sort_by(&:last).reverse[0..29].to_h.each do |k,v|
  puts "#{k.ljust(44, ' ')} => #{v}"
end
puts ''
puts "HOT PROGRAMS:"
hot_programs.sort_by(&:last).reverse[0..29].to_h.each do |k,v|
  puts "#{k.ljust(44, ' ')} => #{v}"
end
puts ''
# puts 'SLOT STATS:'
# slot_stats.each do |ss|
#   puts ss.inspect
# end
# puts ''
puts `cat #{input_file} | grep WouldExceedBlockMaxLimit | wc -l`.chomp + ' WouldExceedBlockMaxLimit'
puts `cat #{input_file} | grep WouldExceedAccountMaxLimit | wc -l`.chomp + ' WouldExceedAccountMaxLimit'

# Write CSV Files
# Hot Accounts
CSV.open('hot_accounts.csv', 'wb') do |csv|
  csv << ['Address', 'Count']
  hot_accounts.sort_by(&:last).reverse.each do |k,v|
    csv << [k, v]
  end
end

# Hot Signers
CSV.open('hot_signers.csv', 'wb') do |csv|
  csv << ['Address', 'Count']
  hot_signers.sort_by(&:last).reverse.each do |k,v|
    csv << [k, v]
  end
end