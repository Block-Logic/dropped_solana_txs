# dropped_solana_txs
This contains log file data of Solana transactions dropped from my validator. I am providing this information to help application developers who are curious to know why their TXs might be dropped.

Each TX was dropped because it  `WouldExceedBlockMaxLimit` or `WouldExceedAccountMaxLimit` in the current block. You can will see the "hot accounts" & "hot programs" in these files.

From the file `dropped_txs_20220519.txt.zip`, I see the following hot accounts & programs with the most dropped transactions:

CORRELATION, NOT CAUSATION!

```
HOT WRITABLE ACCOUNTS:
BcBrgjgsdSKkv3W1BBXvQ4dso79twYkgcuoEx6XhHUaN => 11231
DsuNa6rnWKgWjVBRupbCbzmZiLN7zMgJVZQDWmWQXkkK => 11225
45fHbpoDpWauGMaQUuf6vdNjJvSoR241pADxbQietn6R => 11225
2MJQAv7qw3xrg39J8R6S9JHsBVawz4vVUycZiWXrB6Bb => 11218
9S8aH8LXtDbPGS5z9dnJWSmwAAjx1AFpQsjBhi8eidnc => 4995
Bx7wP3zYbSZsyKUtSvBeZp3oYTPnor47vTEUv6ySQ1jw => 3390
Evcu8h19TmrxEnAiUBnAjQQQi7uKS7XZUzWPzHXvK9Pp => 2882
CGcrpkxyx92vjyQApsr1jTN6M5PeERKSEaH1zskzccRG => 2880
9dcqpTqBJu2tiGPBrCZLXRx5REqWHSPWtjXjza9k63mc => 2528
EFtvVdhGYobBWux75PRsyaQRJYsMtdHF2SH9PuSUGYdy => 2496
CfWX7o2TswwbxusJ4hCaPobu2jLCb1hfXuXJQjVq3jQF => 1467
EnTrdMMpdhugeH6Ban6gYZWXughWxKtVGfCwFn78ZmY3 => 1467
GR363LDmwe25NZQMGtD2uvsiX66FzYByeQLcNFr596FK => 1330
ANXcuziKhxusxtthGxPxywY7FLRtmmCwFWDmU5eBDLdH => 1329
2juozaawVqhQHfYZ9HNcs66sPatFHSHeKG5LsTbrS2Dn => 1329
HWHvQhFmJB3NUcu1aihKmrKegfVxBEHzwVX6yZCKEsi1 => 1326
29cTsXahEoEBwbHwVc59jToybFpagbBMV6Lh45pWEmiK => 1325
EJwyNJJPbHH4pboWQf1NxegoypuY48umbfkhyfPew4E  => 1325
4NJVwEAoudfSvU5kdxKm5DsQe4AAqG6XxpZcNdQVinS4 => 1288
CB86HtaqpXbNWbq67L18y5x2RhqoJ6smb7xHUcyWdQAQ => 1288
7XawhbbxtsRcQA8KTkHT9f9nc6d69UwqCDh6U5EEbEmX => 1288
876Z9waBygfzUrwwKFfnRcc7cfY4EQf6Kz1w7GRgbVYW => 1288
5Cac99FQLoDSLhaPgLmGdaPutcmsjnPzDSScgyfbtX3t => 1279
8YTKpDHHnXSxdWP9N4L5eo6WM7QdgpaXdn3vgdZ4h3aR => 1278
GKrA1P2XVfpfZbpXaFcd2LNp7PfpnXZCbUusuFXQjfE9 => 1243
HhsGV5oe4jLf49ix2iYefgVpSEU2wdcbjNQzvBWLw9zR => 1217
8wp3sc46PjBz7UAmWoiHzgZHYjb4LhsWmHED9b4yYAKa => 1201
m6jKUb5KmKtEDMAP8FpENv3k2ecRWDxvM1azgcQbVcw  => 1090
9KLmeRBpT4chsxkJatfDdzrtTBvBastYp9wMe712ASCg => 1090
2oxTZXWtZQiZ4amFfhFHJSPoXGhi4gtBV8SF9BZTF4kg => 1090
```

```
HOT PROGRAMS:
TokenkegQfeZyiNwAJbNbGKPFXCWuBvf9Ss623VQ5DA  => 20564
11111111111111111111111111111111             => 12856
ATokenGPvbdGVxr1b2hvZbsiqW5xWH25efTNsLJA8knL => 12440
metaqbxxUerdq28cj1RbAWkYQm3ybzjb6a8bt518x1s  => 12435
ComputeBudget111111111111111111111111111111  => 11234
CMZYPASGWeTz7RNGHaRJfCq2XQ5pYK6nDvVQxzkH51zb => 11225
MemoSq4gqABAXKb96qnH8TysNcWxMyWCqXgDLGmfcHr  => 8381
JUP2jxvXaqu7NQY1GmNF4m1vodw12LVXYxbFL2uJvfo  => 6986
otterXYtgZ5DRUGX6JGtcZPg3GoWxEqcLrb9MjeCv3X  => 4995
Vote111111111111111111111111111111111111111  => 4834
9xQeWvG816bUx9EPjHmaT23yvVM2ZWbrrpZb9PusVFin => 4148
cjg3oHmg9uuPsP8D6g29NWvhySJkdYdAo9D25PRbKXJ  => 4017
mv3ekLzLbnVPNxjSKvqBpU3ZeZXPQdEC3bp5MDEBG68  => 3452
675kPX9MHTjS2zt1qfr1NYHuzeLXfQM9H24wFSUt1Mp8 => 3038
EWWy8ipWs2Lf4dA6CunwB2uYpevPTQUHHyiHewbwCfMp => 2882
SSwpkEEcbUqx4vtoEByFjSkhKdCT862DNVb52nZg1UZ  => 2489
MERLuDFBMmsHnsBPZw2sDQZHvXFMwp8EdjudcU2HKky  => 2415
9W959DqEETiGZocYWCQPaJ6sBmUzgfxXfqGeTEdp3aQP => 1720
cndy3Z4yapfJBmL3ShUp5exZKqR3z33thTzeNMm2gRZ  => 1087
whirLbMiicVdio4qvUfM5KAg6Ct8VwpYzGff3uctyCc  => 863
EewxydAPCCVuNEyrVN68PuSYdQ7wKn27V9Gjeoi8dy3S => 655
AMM55ShdkoGRB5jVYPjWziwk8m5MpwyDgsMWHaMSQWH6 => 362
4FuHh13dadkVJQeDFdtQg8vMKRPxVZJLU7dEXy61Y5Bn => 309
FsJ3A3u2vn5cTVofAjvy6y5kwABJAqYWpe4975bi2epH => 275
E1emntd1y2UrkWEECuceaLvGAkq9WK6kyWrNjKiP14mT => 219
GDDMwNyyx8uB6zrqwBFHjLLG3TBYk2F8Az4yrQC5RzMp => 173
SW1TCH7qEPTdLsDHRgPuMQjbQxKdH2aBStViMFnt64f  => 129
94oHQMrCECP266YUoQmDvgVwafZApP9KAseMyNtjAPP7 => 116
ArAA6CZC123yMJLUe4uisBEgvfuw2WEvex9iFmFCYiXv => 109
DtmE9D2CSB4L5D6A15mraeEjrGMm6auWVzgaD8hK2tZM => 108
```

Here is an example:

```
May 18 23:19:24 ams25 solana-rpc.sh[8158]: [2022-05-18T23:19:24.309634554Z ERROR solana_core::qos_service] slot 134329042, transaction SanitizedTransaction { message: Legacy(Message { header: MessageHeader { num_required_signatures: 1, num_readonly_signed_accounts: 0, num_readonly_unsigned_accounts: 3 }, account_keys: [HQUygbE1xW1JTiQSMxds3VcPe5ZjqzUrCE9gEaweohKK, 6DCoZxkD7WvAoN8ZMFYDtsnm1gbjzYG71XyFyEneXuuD, 7CLo1BY41BHAVnEs57kzYMnWXyBJrVEBPpZyQyPo2p1G, HEvSKofvBgfaexv23kMabbYqxasxU3mQ4ibBMEmJWHny, DmyXzXzPXwiy3D9hTEgwHejnhGq4YWndUqrRGWY3UHZP, cjg3oHmg9uuPsP8D6g29NWvhySJkdYdAo9D25PRbKXJ], recent_blockhash: 2tQsFUKDjyj2WUmZR1YgMU5AJrhHe8z3ZmbLwkhWSjCn, instructions: [CompiledInstruction { program_id_index: 5, accounts: [1, 0, 2, 3, 4], data: [253, 0, 3, 52, 112, 10, 221, 220, 150, 241, 138, 119, 236, 110, 80, 52, 207, 122, 176, 69, 25, 74, 66, 154, 218, 148, 237, 49, 72, 79, 26, 62, 184, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 132, 20, 10, 154, 24, 226, 241, 78, 246, 102, 3, 194, 129, 70, 4, 213, 202, 160, 154, 117, 42, 219, 199, 159, 42, 214, 162, 187, 169, 116, 86, 45, 233, 234, 123, 98, 133, 125, 253, 15, 10, 9, 2, 4, 3, 7, 5, 0, 11, 1, 12, 14, 6, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 245, 205, 120, 0, 0, 0, 1, 181, 209, 200, 70, 120, 162, 46, 64, 249, 216, 48, 237, 76, 4, 93, 63, 204, 37, 148, 208, 34, 22, 39, 235, 29, 64, 200, 42, 110, 118, 204, 133, 250, 175, 194, 206, 4, 59, 49, 190, 21, 1, 31, 179, 24, 203, 186, 76, 249, 193, 12, 215, 44, 181, 196, 124, 190, 190, 96, 131, 165, 194, 245, 145, 82, 47, 151, 69, 1, 138, 227, 221, 139, 229, 75, 133, 221, 50, 31, 133, 228, 249, 239, 1, 202, 35, 8, 40, 31, 128, 177, 188, 195, 168, 17, 158, 73, 147, 234, 140, 60, 43, 111, 223, 164, 212, 71, 30, 194, 204, 245, 142, 122, 104, 209, 245, 230, 78, 54, 213, 137, 21, 145, 148, 164, 41, 45, 62, 177, 55, 88, 252, 51, 0, 175, 161, 39, 0, 242, 84, 205, 129, 147, 162, 89, 252, 120, 20, 2, 130, 178, 16, 251, 193, 89, 167, 184, 73, 65, 233, 157, 98, 11, 178, 180, 81, 54, 102, 248, 135, 60, 208, 183, 83, 97, 174, 181, 162, 38, 64, 130, 58, 237, 224, 111, 55, 249, 109, 69, 136, 133, 127, 5, 34, 112, 117, 99, 70, 0, 180, 84, 157, 24, 47, 37, 0, 40, 236, 140, 59, 135, 226, 73, 139, 72, 179, 225, 64, 100, 59, 240, 95, 38, 140, 151, 128, 207, 60, 172, 61, 27, 99, 220, 211, 234, 174, 83, 83, 67, 17, 43, 41, 181, 199, 80, 221, 92, 52, 173, 123, 237, 164, 31, 174, 207, 255, 72, 229, 47, 121, 233, 51, 25, 1, 117, 75, 133, 146, 49, 1, 127, 106, 140, 178, 97, 191, 186, 38, 143, 239, 126, 161, 254, 28, 22, 123, 111, 41, 222, 247, 184, 176, 200, 60, 18, 58, 2, 116, 26, 34, 177, 116, 126, 167, 191, 180, 235, 139, 248, 56, 99, 77, 130, 182, 18, 134, 56, 123, 43, 192, 145, 253, 1, 21, 91, 24, 40, 49, 1, 252, 64, 169, 235, 25, 219, 64, 255, 36, 15, 253, 167, 198, 82, 78, 235, 2, 172, 234, 250, 187, 56, 81, 227, 171, 72, 211, 64, 233, 232, 94, 17, 106, 224, 139, 163, 158, 249, 25, 75, 251, 175, 42, 104, 177, 186, 68, 217, 31, 28, 17, 131, 229, 139, 204, 253, 94, 100, 178, 146, 232, 232, 156, 62, 0] }] }), message_hash: 3Lqa6tXefXKbuX8beUZyqZM9xWxnA6tjpbeQQJ4zDiPx, is_simple_vote_tx: false, signatures: [59aH4bZTz3MtPzekx8yDsA7EVpdzoaCh3MrnYEv3Ugbceq3xmrUWrdmozLfoU3brmedF5wG7VzCaZmdZaXdfhUzv] }, cost TransactionCost { writable_accounts: [HQUygbE1xW1JTiQSMxds3VcPe5ZjqzUrCE9gEaweohKK, 6DCoZxkD7WvAoN8ZMFYDtsnm1gbjzYG71XyFyEneXuuD, 7CLo1BY41BHAVnEs57kzYMnWXyBJrVEBPpZyQyPo2p1G], signature_cost: 720, write_lock_cost: 900, data_bytes_cost: 30, builtins_execution_cost: 0, bpf_execution_cost: 185119, is_simple_vote: false }, not fit into current block, 'WouldExceedAccountMaxLimit'
```

I will occasionally upload data dumps here in zip files. Feel free to open an issue for discussion or feedback.

Thanks!

-- BL
