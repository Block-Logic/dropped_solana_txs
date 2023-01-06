# dropped_solana_txs
This contains log file data of Solana transactions dropped from my validator. I am providing this information to help application developers who are curious to know why their TXs might be dropped.

Each TX was dropped because it  `WouldExceedBlockMaxLimit` or `WouldExceedAccountMaxLimit` in the current block. You can will see the "hot accounts" & "hot programs" in these files.

Between Jan 5-6, 2023, Block Logic dropped 20,891 transactions. 12,209 were dropped for `WouldExceedBlockMaxLimit` and 8,682 were dropped for `WouldExceedAccountMaxLimit`. That's only 1 validator for 1 day, but it should give a representative sample across all validators.

These totals are notably smaller that last August (see data further below). QUIC was not yet enabled in August, so I think the spam problem was much worse then.

Grab data files:
- dropped_txs_20220808.txt.zip from https://tritononelimited.box.com/s/g7erdarsl3c4r3wa7qqsqnidvfwm78e5

From the file `dropped_txs.txt`, I see the following hot accounts & programs with the most dropped transactions:

CORRELATION, NOT CAUSATION!

```
HOT WRITABLE ACCOUNTS:
GHsWvxp6KJ3Yr8HH5L4pbHkC1YMGk8FzMknsYo1kzzZv => 6296
A9yRKSx8SyqNdCtCMUgr6wDXUs1JmVFkVno6FcscSD6m => 6296
5F2yj13thTvdTaNdMvxgsczPRXfbqVd7tr13bJSFg1W7 => 6296
D9dojzvwJGs4q3Cx8ytvD8kWVVZszoVKvPZEZ5D8PV1Y => 6296
8PhnCfgqpgFM7ZJvttGdBVMXHuU4Q23ACxCvWkbs1M71 => 6296
8BjvcgtwT5rdaypEMZFAA35gHeRT992aPFr4dwdcLf1v => 6296
5BsukuACaQcjVu9XSZ8PP3BN9pBxxtZjQELxosC4Ucyx => 3985
661Hs8eHNKfRF5vUF8dX7mMLhRNVNGXcygWPRPtgYRcd => 3985
B4kvik9yEXTJ1UScDUqTxfvhnHUkfChv5pF6zNSyEraQ => 3985
G7mw1d83ismcQJKkzt62Ug4noXCjVhu3eV7U5EMgge6Z => 3985
9RfZwn2Prux6QesG1Noo4HzMEBv3rPndJ2bN2Wwd6a7p => 3808
7qbRF6YsyGuLUVs6Y1q64bdVrfe4ZcUUz1JRdoVNUJnm => 3808
BVNo8ftg2LkkssnWT4ZWdtoFaevnfD6ExYeramwM27pe => 3808
EW6eXGqTfq6hMmrBRDxTijL8iki5nBbbFRt7KgbqeZdG => 3803
9MFtooE7VrHtf8sMNv6RYUBceErGtoCXsVojvDZmCNg6 => 3345
Frwr9CbvEXLorsVB4q652tqxaMSER94FNrt1MiLfLkkY => 3345
45WHweWfvt1n17LTVcRuLAHrV8HYwXNpjQks69fe7urx => 3345
6N618nNabD83sMrNj8GpMAHq6WKzufiruiyi2eMHFmPn => 3345
BaronsRTzAohubvj8Pug51Z4YcN19ConcabyoK3c6vnw => 3201
9fK6W8gaHL1wxUJqgKqCKXcQ8LEUst5CpMRZ939wygpQ => 3201
6kLBwjmhUeVjBSJj1kSyvjL8y3F8ziE4iRkud146TmFr => 3176
4ba1AsNw9gdHkWWArvz4zBErNrMDVZHny1AdUkm9Yv2n => 2729
5P6n5omLbLbP4kaPGL8etqQAHEx2UCkaUyvjLDnwV4EY => 2729
HggXczDfUVQY9BrZ4whryvjbyG3sTUUxmphApSS481gy => 2729
DoPUJXzG6Q7TwoxXJ1PtETqCUDfovpHLhwvj737KTmua => 2525
4JqTBpfysaBqxwTb6FNKfEfzsZTTUXJcjmdwhvBo5CN4 => 2296
HTsaYAZ5yhpk98Dm3fDKrTueieEDX34ZkUjeacQYoVSV => 2159
EA5NtnGXFe2zVnoov7gAcntreefhMTqXXTGWNerx41Jm => 2159
BqnpCdDLPV2pFdAaLnVidmn3G93RP2p5oRdGEY2sJGez => 2159
8Ks3wPfwMBcKisH5QgTsengF6yCPTTjQpEp5NWHWNXBK => 2159

HOT SIGNERS:
BaronsRTzAohubvj8Pug51Z4YcN19ConcabyoK3c6vnw => 3201
EDMGEpKKGKS7nxpu1gjLmuHHWAmvLNy3BZWDxNC3nhAt => 945
G6EF4Q1mJBZck6BNrMk6xMkCC8Su7GrS1U1HxoRW5hAV => 817
PEN1Scuoo9m7dGGXTo8ES9kUNFUpQGC4yhjsX9xDqVG  => 607
PEN1S2D3X1FnY1jvsLHXqnY397yYEQVWmJpLVzzfK9V  => 582
Fsb16JMXAWLML5PTLKVh5Lg1xviVB6ah5p7YYcJEw3g2 => 566
YomamaQKTDXQysGXUyvhY6o1sJZCTXzmKpSYsDyk4UM  => 561
M1LADYbrGp4NRCY5nGXEjwePNgi2fo45T4RYobErPiq  => 551
Chaos7msYNBqSaDctus3jPm7ANnwTLC8BDJmKiZhePWk => 523
6hXVxKZ2LaeWVc3SMashxgAUeqX8PcdJo2fD5viYsLYd => 460
277Xi9qxS7HtewZnXtETX7WmNNeJjcsDWErVnTd5haoi => 374
HxQwiMCJaStYWAJfoqKhoLcjmryff2mwbjhkca69GvU1 => 320
EfaedeX5aRiZbR3qusCezvtuwsNB2JmgBD7JQXjEzH6p => 319
ANqcTpo8qNEXiCxwr7DBBCrP69QLEFyLpLN6ybY9gVpJ => 298
27oVRZp83qjveDDjLumomimtW93fmyDJahz3q4oT3xpz => 286
7Fb53kqkqNSKizyDNt3sZF1gjNEziBWdE6U2Z7XkTuqe => 265
ENiqXo7bBWkemB3FtKnt6eNRkrouRKu7HhGTqxpUndGH => 135
8JfPbroaxRsVHnzrUE7V7KpjQUhQLsPs54qp479caqb8 => 135
CMxukMpUgsD9GSedAqrRG2EJ5rnbwb4HLPHpMCk27HqC => 130
346xcdYqh5T7AgWiBSGvRFqXW5MrwCycPUVnqUbjpiz8 => 116
5dDyfdy9fannAdHEkYghgQpiPZrQPHadxBLa1WsGHPFi => 109
FrmHRaEz1g1RpYwH46t6KjpWDZkAxbqKyhUf5Fae3V3d => 101
JTmFx5zX9mM94itfk2nQcJnQQDPjcv4UPD7SYj6xDCV  => 96
9doNJz52PMd8bi3FKRV9gfXa5nXLDjoW1SBVMbmAuuSh => 94
31Sof5r1xi7dfcaz4x9Kuwm8J9ueAdDduMcme59sP8gc => 85
5nM1CTQwKXFZo5yJYC8J1pgj32JW6Fx8DpQAtPZ8aiLw => 79
Dissentingmc8qH6PVQnTss3tpeCyP6DKPzeZuEEVQqS => 70
Cy7J9Y6GZB3Jhj6xFnSAPs3VNPZhWoFVmYaA6hERr4vC => 68
skyPbXK9B9f4o5Cz9JDMpw4RCxaLKhe1NsqbQ1sQdcZ  => 67
6hyuGqKQyhAEipjtaquiNHfd1dVjrNT3FzzanXurbK4W => 66

HOT PROGRAMS:
ComputeBudget111111111111111111111111111111  => 11649
JUP4Fb2cqiRUcaTHdrPC8h2gNsA2ETXiPDD33WcGuJB  => 6574
Vote111111111111111111111111111111111111111  => 5437
TokenkegQfeZyiNwAJbNbGKPFXCWuBvf9Ss623VQ5DA  => 4974
EN1GMAXbcQF3ucku4wpxE45CKUaoBD3yiutrFqNfLfK7 => 2824
11111111111111111111111111111111             => 2668
whirLbMiicVdio4qvUfM5KAg6Ct8VwpYzGff3uctyCc  => 2236
ATokenGPvbdGVxr1b2hvZbsiqW5xWH25efTNsLJA8knL => 2170
srmqPvymJeFKQ4zGQed1GFppgkRHL9kaELCbyksJtPX  => 1906
675kPX9MHTjS2zt1qfr1NYHuzeLXfQM9H24wFSUt1Mp8 => 1330
cjg3oHmg9uuPsP8D6g29NWvhySJkdYdAo9D25PRbKXJ  => 1167
F1ZY6nXjLkBBR69ozgQfVmhkT9WYuNGenJb7FA8shqEK => 976
FsJ3A3u2vn5cTVofAjvy6y5kwABJAqYWpe4975bi2epH => 609
MemoSq4gqABAXKb96qnH8TysNcWxMyWCqXgDLGmfcHr  => 574
cndy3Z4yapfJBmL3ShUp5exZKqR3z33thTzeNMm2gRZ  => 494
M2mx93ekt1fmXSVkTrUL9xVFHkmME8HTUi5Cyc5aF7K  => 488
EvocationV9G8ZTWXPa9QoVsJDmEeGdqk8pxPAt8ApJf => 322
9AyUhsKo3MwmPAuM6yT1cPvq3H6rHB2ycFi11JeVuqKP => 298
EewxydAPCCVuNEyrVN68PuSYdQ7wKn27V9Gjeoi8dy3S => 298
CAMMCzo5YL8w4VFF8KVHrK22GGUsp5VTaW7grrKgrWqK => 218
9W959DqEETiGZocYWCQPaJ6sBmUzgfxXfqGeTEdp3aQP => 218
JUP3c2Uh3WA4Ng34tw6kPd2G4C5BB21Xo36Je1s32Ph  => 202
FcfzrnurPFXwxbx332wScnD5P86DwhpLpBbQsnr6LcH5 => 176
SSwpkEEcbUqx4vtoEByFjSkhKdCT862DNVb52nZg1UZ  => 145
GDDMwNyyx8uB6zrqwBFHjLLG3TBYk2F8Az4yrQC5RzMp => 100
5xcBkS1k1pWErFjakTJjjMZReF8iErkWq3HCykrNwoT9 => 95
7K3UpbZViPnQDLn2DAM853B9J5GBxd1L1rLHy4KqSmWG => 94
SW1TCH7qEPTdLsDHRgPuMQjbQxKdH2aBStViMFnt64f  => 94
KeccakSecp256k11111111111111111111111111111  => 94
dRiftyHA39MWEi3m9aunc5MzRF1JYuBsbn6VPcn33UH  => 89
```

================================================================================

Between August 7-8, 2022, Block Logic dropped 1,277,075 transactions. 143,474 were dropped for `WouldExceedBlockMaxLimit`, and 1,133,601 were dropped for `WouldExceedAccountMaxLimit`. That's only 1 validator for 1 day, but it should give a representative sample across all validators. 

Grab data files:
- dropped_txs_20220808.txt.zip from https://tritononelimited.box.com/s/n8xoxlfaklnixgrlc3sa5aly8p955rxd

From the file `dropped_txs_20220808.txt.zip`, I see the following hot accounts & programs with the most dropped transactions:

CORRELATION, NOT CAUSATION!

```
HOT WRITABLE ACCOUNTS:
33nQCgievSd3jJLSWFBefH3BJRN7h6sAoS82VFFdJGF5 => 502276
EBDRoayCDDUvDgCimta45ajQeXbexv7aKqJubruqpyvu => 191770
Cr3YrMy4CcvB7j64kq3eC7H8w4sTV8tQLNXFQhECvaPn => 160848
DagL68W689oVS6vH1xAaX7uLkLYE16XiZr7xoe7wsskv => 148491
BgxfHJDzm44T7XG68MYKx7YisTjZu73tVovyZSjJMpmw => 148434
8SheGtsopRUDzdiD6v6BR9a6bqZ9QwywYQY99Fp5meNf => 148430
9wFFyRfZBsuAha4YcuxcXLKwMxJR43S7fPfQLusDBzvT => 92330
5KKsLVU6TcbVDK4BS6K1DGDxnh4Q9xjYJ8XaDCG5t8ht => 92313
36c6YqAwyGKQG66XEp2dJc5JqjaBNv7sVghEtJv4c7u6 => 92282
8CFo8bL8mZQK8abbFyypFMwEDd8tVJjHTTojMLgQTUSZ => 92282
14ivtgssEBoBjuZJtSAPKYgpUK7DmnSwuPMqJoVTSgKJ => 92265
CEQdAFKdycHugujQg9k2wbmxjcpdYZyVLfV9WerTnafJ => 92265
JB4U8TL6SdEcrKa17htFTfbxXMZE7yk5MPSQFdTgsh4y => 91691
AZG3tFCFtiCqEwyardENBQNpHqxgzbMw8uKeZEw2nRG5 => 89637
BGcwkj1WudQwUUjFk78hAjwd1uAm8trh1N4CJSa51euh => 87302
2bqJYcA1A8gw4qJFjyE2G4akiUunpd9rP6QzfnxHqSqr => 75070
8c3dfuyx5tHzbSP7yJj1cpEA8Wqsy64zC2THZrkQ96d1 => 74131
9ivwbLp2Tm8Vb5neMiLGY17Ack8nAcsqyTHjyU3eR72k => 74131
5JT6EK5wLEYGpAXMY2BXvhoeuQCp93eo4os2EtXwnPG1 => 74042
2d95ZC8L5XP6xCnaKx8D5U5eX6rKbboBBAwuBLxaFmmJ => 74042
9n2exoMQwMTzfw6NFoFFujxYPndWVLtKREJePssrKb36 => 74042
6uEjo58ecepRyYnKRLdAMRn8ic3oJJxnwMBH96ufMSXN => 74040
A7qreadb9LoiKWCg3r2duL48JR76Jv28iwCZ8sH4t34s => 74040
GEaav28EdvifUvp2s61jd4a8Egc3PLfd3TykLvurzaDx => 74040
2E15BsCyBeAu9TwhWKQ9yWj9a4TKoPkv7B1JjNxFF7v7 => 74040
8Vw25ZackDzaJzzBBqcgcpDsCsDfRSkMGgwFQ3gbReWF => 72525
t5gvnDXtF5gcdFNCGcxkDYGAyTJHFxapCwFKMYPL4fG  => 69678
46nhGs6MvxtHBQXxVzTSftbq5CmA1NPSTZoDR7CayZX9 => 69678
DtEcjPLyD4YtTBB4q8xwFZ9q49W89xZCZtJyrGebi5t8 => 65035
yWCnhvqUv4fnvMjVs5gGSi6ETceZfoAm95exMBE3YdD  => 63743
```

```
HOT SIGNERS:
Cr3YrMy4CcvB7j64kq3eC7H8w4sTV8tQLNXFQhECvaPn => 160848
yWCnhvqUv4fnvMjVs5gGSi6ETceZfoAm95exMBE3YdD  => 63743
Ap5pxfhTsW8bW4SvbezbrGdaSWRDmNSMycgCu11ba4i  => 63210
6xf1PhucG5GfYhmjDj39StTRqRNB4yuGL6jAVxvuvKur => 55471
StormETQywZMncNSpwHWGakGGCHmBNRUauAbFYGCBH4  => 53896
H3qRvmnRBD4ypqhbnBGQFbQHGW1YPgfvrgEoUfDjamCY => 45775
FzAmML1VMfoDFzMYaR1gFKL6Sg6pah5rSoi7BgjeZCK2 => 43332
5zETdcrZjQ8XToMQQgdi51nt6cAnrYhckkcRLuFFhAw2 => 37545
3DVT8JTniKYJURMZRNr5k9rex4sR3MbDRNjVQsXz1Vuq => 35016
DAQ7J8rqrNJN8KE9dGL6PjiB2B2XF7RroMYkwGxL93Jy => 28619
EDMGEpKKGKS7nxpu1gjLmuHHWAmvLNy3BZWDxNC3nhAt => 26209
94h7sHhoNRze4BvQ4BheuerZ2yGBLNqgWuhZRujZtwiP => 24871
LovEJAsJ3cewHMnyNHus2bzxgkRyRu5AMvsaQkSN11v  => 21986
58PSLMbX2EbbMYNpwaa2NCACBCWjJpfQgkVnjttfGfp3 => 21457
iuwtfpp8yzDrJNQbHXBSufSCZKhGctw5bQFAx23VgBH  => 21426
9JMLeSco7dSknbkWAzRfZ71rwPySFYGAMBB3JJDUdUtz => 19354
4mQX1CfjabbRFeL7YhEVGZ9ymyQUp6itffWYRxPzofc1 => 18087
kiWidySQu49wuvkx2B3NZyXsmR2eDukfs5EED61Nw88  => 16424
5yv6Vh8FNx93TXeSS94xy8VLZMbTqx4vXp7Zg5bDLZtE => 16127
568YC5MKvWMXvZGAuBmY6DohxrAuiEdSRFryX1ByPvCz => 15669
6Qr6YsFNkMFekRgEcfXkT2wzyiu924idAHpir2Hz3cuE => 15152
ALGmZe94vEkuGtFbKYT1K7cPjAJREe4Df3KYBkvAx5YT => 15013
3QioEt3JQEs7Sd2B19oBjXpCV2bth8svTmjNsqCwEkux => 14813
GEnxxkUiq5dEhBD4EWHSU2sKWvmx5nhEDjKLu7HegbbT => 14739
9Zxn12msdDQVM3NQvmxQX4bH26pDyKNcHWbgXpEwcVtn => 14501
JE7uaXycGiKAHKmBWBdohzbHfHzMDnDZ2qxkNBhDix8M => 13904
AkUAEMfNabKQbzRBSSMKkx4bvxhXxnKJEcDU4AoQcZno => 12585
6maSVG1tMWdd7NYYYoHnG1persyKSZsMVZJfcpga3AEq => 9934
KiLoVJngf4sNQfK1M6tDYrYD4pZw2Y2VfKhe8M7BUgT  => 9602
48cWui36ja3HvvehDoUBNDr9veFmEb2qsAWkaJ5k8KUC => 7513
```

```
HOT PROGRAMS:
TokenkegQfeZyiNwAJbNbGKPFXCWuBvf9Ss623VQ5DA  => 916344
11111111111111111111111111111111             => 669910
metaqbxxUerdq28cj1RbAWkYQm3ybzjb6a8bt518x1s  => 538266
ATokenGPvbdGVxr1b2hvZbsiqW5xWH25efTNsLJA8knL => 538068
ArAA6CZC123yMJLUe4uisBEgvfuw2WEvex9iFmFCYiXv => 502278
ComputeBudget111111111111111111111111111111  => 414675
mv3ekLzLbnVPNxjSKvqBpU3ZeZXPQdEC3bp5MDEBG68  => 270033
9xQeWvG816bUx9EPjHmaT23yvVM2ZWbrrpZb9PusVFin => 178238
So1endDq2YkqhipRh3WViPa8hdiSpxWy6z3Z6tMCpAo  => 160857
Vote111111111111111111111111111111111111111  => 64397
GDDMwNyyx8uB6zrqwBFHjLLG3TBYk2F8Az4yrQC5RzMp => 58820
ARCANAFz2Twk2hQMQPefN4sACpBXBwVkEDL3gWKJMM6H => 53896
9W959DqEETiGZocYWCQPaJ6sBmUzgfxXfqGeTEdp3aQP => 52368
JUP3c2Uh3WA4Ng34tw6kPd2G4C5BB21Xo36Je1s32Ph  => 47764
cndy3Z4yapfJBmL3ShUp5exZKqR3z33thTzeNMm2gRZ  => 31430
cjg3oHmg9uuPsP8D6g29NWvhySJkdYdAo9D25PRbKXJ  => 29415
whirLbMiicVdio4qvUfM5KAg6Ct8VwpYzGff3uctyCc  => 28680
SSwpkEEcbUqx4vtoEByFjSkhKdCT862DNVb52nZg1UZ  => 26799
675kPX9MHTjS2zt1qfr1NYHuzeLXfQM9H24wFSUt1Mp8 => 24055
JUP2jxvXaqu7NQY1GmNF4m1vodw12LVXYxbFL2uJvfo  => 23306
MERLuDFBMmsHnsBPZw2sDQZHvXFMwp8EdjudcU2HKky  => 22190
sarbL3oPVviJSsRzZYzPCMA7p7pFGzRBFQFU62xNpNz  => 20925
MEVuSiZ38f55RfEotQtbQ3Tq2HuFSARovoMcDaHQXo1  => 9435
xmm1sH2tSZLYbmfFJtL8PT2osScMjfMPfgvtaCcJhUJ  => 6594
FsJ3A3u2vn5cTVofAjvy6y5kwABJAqYWpe4975bi2epH => 6454
MEV4g2VQod71BL6L2Giu1ykqEAqvyXytdWKp1ugDdqQ  => 5942
E8rzJBbUCbice9Q4BcX3LzzixtkJD11GTnDcqPS7WqaA => 5020
9gDTN9tCfb4Noyw99GMbnBdTeNdoCTx7gbMdyTK8xBdD => 4519
MEVSYBzJr42AKDA2L3MN1YqLwqaupBrrq5eFjgSRTy4  => 4236
EXBuYPNgBUXMTsjCbezENRUtFQzjUNZxvPGTd11Pznk5 => 4224
```

Here is an example:

```
May 18 23:19:24 ams25 solana-rpc.sh[8158]: [2022-05-18T23:19:24.309634554Z ERROR solana_core::qos_service] slot 134329042, transaction SanitizedTransaction { message: Legacy(Message { header: MessageHeader { num_required_signatures: 1, num_readonly_signed_accounts: 0, num_readonly_unsigned_accounts: 3 }, account_keys: [HQUygbE1xW1JTiQSMxds3VcPe5ZjqzUrCE9gEaweohKK, 6DCoZxkD7WvAoN8ZMFYDtsnm1gbjzYG71XyFyEneXuuD, 7CLo1BY41BHAVnEs57kzYMnWXyBJrVEBPpZyQyPo2p1G, HEvSKofvBgfaexv23kMabbYqxasxU3mQ4ibBMEmJWHny, DmyXzXzPXwiy3D9hTEgwHejnhGq4YWndUqrRGWY3UHZP, cjg3oHmg9uuPsP8D6g29NWvhySJkdYdAo9D25PRbKXJ], recent_blockhash: 2tQsFUKDjyj2WUmZR1YgMU5AJrhHe8z3ZmbLwkhWSjCn, instructions: [CompiledInstruction { program_id_index: 5, accounts: [1, 0, 2, 3, 4], data: [253, 0, 3, 52, 112, 10, 221, 220, 150, 241, 138, 119, 236, 110, 80, 52, 207, 122, 176, 69, 25, 74, 66, 154, 218, 148, 237, 49, 72, 79, 26, 62, 184, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 132, 20, 10, 154, 24, 226, 241, 78, 246, 102, 3, 194, 129, 70, 4, 213, 202, 160, 154, 117, 42, 219, 199, 159, 42, 214, 162, 187, 169, 116, 86, 45, 233, 234, 123, 98, 133, 125, 253, 15, 10, 9, 2, 4, 3, 7, 5, 0, 11, 1, 12, 14, 6, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 245, 205, 120, 0, 0, 0, 1, 181, 209, 200, 70, 120, 162, 46, 64, 249, 216, 48, 237, 76, 4, 93, 63, 204, 37, 148, 208, 34, 22, 39, 235, 29, 64, 200, 42, 110, 118, 204, 133, 250, 175, 194, 206, 4, 59, 49, 190, 21, 1, 31, 179, 24, 203, 186, 76, 249, 193, 12, 215, 44, 181, 196, 124, 190, 190, 96, 131, 165, 194, 245, 145, 82, 47, 151, 69, 1, 138, 227, 221, 139, 229, 75, 133, 221, 50, 31, 133, 228, 249, 239, 1, 202, 35, 8, 40, 31, 128, 177, 188, 195, 168, 17, 158, 73, 147, 234, 140, 60, 43, 111, 223, 164, 212, 71, 30, 194, 204, 245, 142, 122, 104, 209, 245, 230, 78, 54, 213, 137, 21, 145, 148, 164, 41, 45, 62, 177, 55, 88, 252, 51, 0, 175, 161, 39, 0, 242, 84, 205, 129, 147, 162, 89, 252, 120, 20, 2, 130, 178, 16, 251, 193, 89, 167, 184, 73, 65, 233, 157, 98, 11, 178, 180, 81, 54, 102, 248, 135, 60, 208, 183, 83, 97, 174, 181, 162, 38, 64, 130, 58, 237, 224, 111, 55, 249, 109, 69, 136, 133, 127, 5, 34, 112, 117, 99, 70, 0, 180, 84, 157, 24, 47, 37, 0, 40, 236, 140, 59, 135, 226, 73, 139, 72, 179, 225, 64, 100, 59, 240, 95, 38, 140, 151, 128, 207, 60, 172, 61, 27, 99, 220, 211, 234, 174, 83, 83, 67, 17, 43, 41, 181, 199, 80, 221, 92, 52, 173, 123, 237, 164, 31, 174, 207, 255, 72, 229, 47, 121, 233, 51, 25, 1, 117, 75, 133, 146, 49, 1, 127, 106, 140, 178, 97, 191, 186, 38, 143, 239, 126, 161, 254, 28, 22, 123, 111, 41, 222, 247, 184, 176, 200, 60, 18, 58, 2, 116, 26, 34, 177, 116, 126, 167, 191, 180, 235, 139, 248, 56, 99, 77, 130, 182, 18, 134, 56, 123, 43, 192, 145, 253, 1, 21, 91, 24, 40, 49, 1, 252, 64, 169, 235, 25, 219, 64, 255, 36, 15, 253, 167, 198, 82, 78, 235, 2, 172, 234, 250, 187, 56, 81, 227, 171, 72, 211, 64, 233, 232, 94, 17, 106, 224, 139, 163, 158, 249, 25, 75, 251, 175, 42, 104, 177, 186, 68, 217, 31, 28, 17, 131, 229, 139, 204, 253, 94, 100, 178, 146, 232, 232, 156, 62, 0] }] }), message_hash: 3Lqa6tXefXKbuX8beUZyqZM9xWxnA6tjpbeQQJ4zDiPx, is_simple_vote_tx: false, signatures: [59aH4bZTz3MtPzekx8yDsA7EVpdzoaCh3MrnYEv3Ugbceq3xmrUWrdmozLfoU3brmedF5wG7VzCaZmdZaXdfhUzv] }, cost TransactionCost { writable_accounts: [HQUygbE1xW1JTiQSMxds3VcPe5ZjqzUrCE9gEaweohKK, 6DCoZxkD7WvAoN8ZMFYDtsnm1gbjzYG71XyFyEneXuuD, 7CLo1BY41BHAVnEs57kzYMnWXyBJrVEBPpZyQyPo2p1G], signature_cost: 720, write_lock_cost: 900, data_bytes_cost: 30, builtins_execution_cost: 0, bpf_execution_cost: 185119, is_simple_vote: false }, not fit into current block, 'WouldExceedAccountMaxLimit'
```

I will occasionally upload data dumps here in zip files. Feel free to open an issue for discussion or feedback.

Thanks!

-- BL
