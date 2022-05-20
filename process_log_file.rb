# Usage:
# ruby process_log_file.rb [Uncompressed log file]

input_file = ARGV[0]

# Monkey Patch String Class
class String
  def between(token_start, token_end)
    self[/#{Regexp.escape(token_start)}(.*?)#{Regexp.escape(token_end)}/m, 1]
  end
end

class TX
  attr_reader :log_string, :slot, :account_keys, :writable_accounts, :tx_cost,
              :instructions

  def initialize(log_line)
    @log_line = log_line
  end

  def parse
    @slot = @log_line
            .between('slot', ', t')
            .strip

    @account_keys = @log_line
                    .between('account_keys: [', '], r')
                    .split(', ')

    @writable_accounts = @log_line
                         .between('writable_accounts: [', '], s')
                         .split(', ')
    @tx_cost = @log_line
               .between('bpf_execution_cost:', ', is')
               .strip

    @instructions = @log_line
                    .between('instructions: [', '] }), message_hash:')
                    .strip
                    .split('CompiledInstruction ')
    # @transaction = @log_line.between('')
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
programs_seen = []

i = 0
File.foreach(input_file) do |line|
  # next unless line.include?('WouldExceedAccountMaxLimit')
  # puts line
  # puts ''

  tx = TX.new(line)
  tx.parse

  # Update hot_accounts
  tx.account_keys.each do |wa|
    hot_accounts[wa] = 0 if hot_accounts[wa].nil?
    hot_accounts[wa] += 1
  end

  # Update hot writable account
  tx.writable_accounts.each do |wa|
    hot_accounts_writable[wa] = 0 if hot_accounts_writable[wa].nil?
    hot_accounts_writable[wa] += 1
  end

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
puts "HOT PROGRAMS:"
hot_programs.sort_by(&:last).reverse[0..29].to_h.each do |k,v|
  puts "#{k.ljust(44, ' ')} => #{v}"
end
puts ''
