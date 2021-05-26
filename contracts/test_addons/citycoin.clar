;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; functions used only during testing
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define-public (ft-mint (amount uint) (recipient principal))
  (ft-mint? citycoins amount recipient)
)


(define-public (generate-miner-id (miner principal))
  (ok (get-or-create-miner-id miner))
)


(define-public (fake-mine-tokens (who principal) (stacks-block-height uint) (amount-ustx uint))
    (let
        (
            (miner-id (get-or-create-miner-id who))
        )
        (try! (set-tokens-mined who stacks-block-height amount-ustx u0 u0))
        (ok true)
    )
)

;; used to quickly simulate presence of 31 miners
(define-public (setup-31-miners (amount uint))
  (begin
    (try! (fake-mine-tokens 'SP1GYBXAJSEF8SY0ERKA068J93E3EGNTXHR98MM5P block-height amount))
    (try! (fake-mine-tokens 'SP2M85H4NNNPQB0Y7GHT3K5EHWMRZWTHF2QAY1W69 block-height amount))
    (try! (fake-mine-tokens 'SP3A33QYJK76BCDJJD11RYWZP9D62PVQXK2VF5TJN block-height amount))
    (try! (fake-mine-tokens 'SP15Q4SMZ9CBY6KR3XVEJ37CPQ5J1BMXDQKTCMGY7 block-height amount))
    (try! (fake-mine-tokens 'SP25BWWBZSX1RMWFPN36MAHSV02242NTTV3SWST8C block-height amount))
    (try! (fake-mine-tokens 'SP1NCBWJEB9FZMTP4KW3KPAK2T6XV34SJ9X5J8G7H block-height amount))
    (try! (fake-mine-tokens 'SP29XBE4RRPBBVSQMZWKRB0J1EEJNTH883X1Y4CBS block-height amount))
    (try! (fake-mine-tokens 'SP1GY8PRRWDM87X61SKH411C9A67CBAV2G3P8JM3M block-height amount))
    (try! (fake-mine-tokens 'SP1WD70BZ4RQ046JF4EYV0NS1NNFXH115PG0P570V block-height amount))
    (try! (fake-mine-tokens 'SPTWZTJ4PVS00X1PM7YEAXCAC64MQQ8EKSYWF1ZY block-height amount))
    (try! (fake-mine-tokens 'SPTWZTJ4PVS00X1PM7YEAXCAC64MQQ8EKSYWF1ZY block-height amount))
    (try! (fake-mine-tokens 'SP9BH35SH9HRT9M6EVTSM0A5V35MR4EZ55B35QEW block-height amount))
    (try! (fake-mine-tokens 'SP1GC4CYYTWD516ZSC60CSBXCFWXYSP6GRJNVEP1S block-height amount))
    (try! (fake-mine-tokens 'SP20PT05Q35SR2HHEQ131SHSJ8339WWR75JMAN15K block-height amount))
    (try! (fake-mine-tokens 'SP1KHGJZ6DVK29MXDNC8CH6SP9D3VQMD5DGDHWKNW block-height amount))
    (try! (fake-mine-tokens 'SPBGS5AACHW8M7W8QEKSBA3241TTBTK3JZ9Z36ZK block-height amount))
    (try! (fake-mine-tokens 'SP4MKYT1P8X8ZT2ECG6X9TWBBMHDZMYHHH529C0Q block-height amount))
    (try! (fake-mine-tokens 'SPGJM94X65H3DN49VEQRQQT454R4EBGGZ9DD880H block-height amount))
    (try! (fake-mine-tokens 'SP3AWJXN3R8JFSNWFCXR3HND5R0Z98271ESDJGJ9 block-height amount))
    (try! (fake-mine-tokens 'SP1SKBHY382YBAM9YCZ384ZFC3ZRMS6MBM94EQZZV block-height amount))
    (try! (fake-mine-tokens 'SP3M5ND3J2JE820X8VZ0FP9TZYTJZRRQG7GX158WH block-height amount))
    (try! (fake-mine-tokens 'SP1ZD2VXR93GN1JRPJFFDMTF13SKPZ4RDW8M5N7FH block-height amount))
    (try! (fake-mine-tokens 'SP26WS8W5ASCTQVWA2N873YXCXD2T5P9ZXFKMX7SM block-height amount))
    (try! (fake-mine-tokens 'SP1FDCJNMK2H0XXN2PAGPSCEJBGP5DARKC1K1QMHR block-height amount))
    (try! (fake-mine-tokens 'SPT00VPT4EXCMMET7RPFRAHSA86CF6QCY2254J9Q block-height amount))
    (try! (fake-mine-tokens 'SP1Z4RZ43E52G58DB17V1391BE1GMBJCEQFFNJJB8 block-height amount))
    (try! (fake-mine-tokens 'SP3SZ8MD3TXGP9WXK3MV6DJB1GQS6FBJ09FF9HP7M block-height amount))
    (try! (fake-mine-tokens 'SP2HYRZ84BK63B4VBBEBBP10ABXW2YPDRN4MXKE9Q block-height amount))
    (try! (fake-mine-tokens 'SP1NTQSMCKRN8MF30FEV6GH6F6M351ZHAE85ZQM55 block-height amount))
    (try! (fake-mine-tokens 'SP3E0K7RCVWF33RXPA1F22G4Y8TAHPP10RHYWXB2E block-height amount))
    (try! (fake-mine-tokens 'SPEKMXTCAEGD6AF1R7A2Q0H7VNKCP75VVC1AZQRQ block-height amount))

    (ok true)
  )
)

(define-public (setup-32-miners-1)
  (begin
    (try! (fake-mine-tokens 'SP3A33QYJK76BCDJJD11RYWZP9D62PVQXK2VF5TJN block-height u3))
    (try! (fake-mine-tokens 'SP15Q4SMZ9CBY6KR3XVEJ37CPQ5J1BMXDQKTCMGY7 block-height u4))
    (try! (fake-mine-tokens 'SP25BWWBZSX1RMWFPN36MAHSV02242NTTV3SWST8C block-height u5))
    (try! (fake-mine-tokens 'SP1NCBWJEB9FZMTP4KW3KPAK2T6XV34SJ9X5J8G7H block-height u6))
    (try! (fake-mine-tokens 'SP29XBE4RRPBBVSQMZWKRB0J1EEJNTH883X1Y4CBS block-height u7))
    (try! (fake-mine-tokens 'SP1GY8PRRWDM87X61SKH411C9A67CBAV2G3P8JM3M block-height u8))
    (try! (fake-mine-tokens 'SP1WD70BZ4RQ046JF4EYV0NS1NNFXH115PG0P570V block-height u9))
    (try! (fake-mine-tokens 'SPTWZTJ4PVS00X1PM7YEAXCAC64MQQ8EKSYWF1ZY block-height u10))
    (try! (fake-mine-tokens 'SPTWZTJ4PVS00X1PM7YEAXCAC64MQQ8EKSYWF1ZY block-height u11))
    (try! (fake-mine-tokens 'SP9BH35SH9HRT9M6EVTSM0A5V35MR4EZ55B35QEW block-height u12))
    (try! (fake-mine-tokens 'SP1GC4CYYTWD516ZSC60CSBXCFWXYSP6GRJNVEP1S block-height u13))
    (try! (fake-mine-tokens 'SP20PT05Q35SR2HHEQ131SHSJ8339WWR75JMAN15K block-height u14))
    (try! (fake-mine-tokens 'SP1KHGJZ6DVK29MXDNC8CH6SP9D3VQMD5DGDHWKNW block-height u15))
    (try! (fake-mine-tokens 'SPBGS5AACHW8M7W8QEKSBA3241TTBTK3JZ9Z36ZK block-height u16))
    (try! (fake-mine-tokens 'SP4MKYT1P8X8ZT2ECG6X9TWBBMHDZMYHHH529C0Q block-height u17))
    (try! (fake-mine-tokens 'SPGJM94X65H3DN49VEQRQQT454R4EBGGZ9DD880H block-height u18))
    (try! (fake-mine-tokens 'SP1GYBXAJSEF8SY0ERKA068J93E3EGNTXHR98MM5P block-height u2))
    (try! (fake-mine-tokens 'SP3AWJXN3R8JFSNWFCXR3HND5R0Z98271ESDJGJ9 block-height u19))
    (try! (fake-mine-tokens 'SP2M85H4NNNPQB0Y7GHT3K5EHWMRZWTHF2QAY1W69 block-height u2))
    (try! (fake-mine-tokens 'SP1SKBHY382YBAM9YCZ384ZFC3ZRMS6MBM94EQZZV block-height u20))
    (try! (fake-mine-tokens 'SP3M5ND3J2JE820X8VZ0FP9TZYTJZRRQG7GX158WH block-height u21))
    (try! (fake-mine-tokens 'SP1ZD2VXR93GN1JRPJFFDMTF13SKPZ4RDW8M5N7FH block-height u22))
    (try! (fake-mine-tokens 'SP26WS8W5ASCTQVWA2N873YXCXD2T5P9ZXFKMX7SM block-height u23))
    (try! (fake-mine-tokens 'SP1FDCJNMK2H0XXN2PAGPSCEJBGP5DARKC1K1QMHR block-height u24))
    (try! (fake-mine-tokens 'SPT00VPT4EXCMMET7RPFRAHSA86CF6QCY2254J9Q block-height u25))
    (try! (fake-mine-tokens 'SP1Z4RZ43E52G58DB17V1391BE1GMBJCEQFFNJJB8 block-height u26))
    (try! (fake-mine-tokens 'SP3SZ8MD3TXGP9WXK3MV6DJB1GQS6FBJ09FF9HP7M block-height u27))
    (try! (fake-mine-tokens 'SP2HYRZ84BK63B4VBBEBBP10ABXW2YPDRN4MXKE9Q block-height u28))
    (try! (fake-mine-tokens 'SP1NTQSMCKRN8MF30FEV6GH6F6M351ZHAE85ZQM55 block-height u29))
    (try! (fake-mine-tokens 'SP3E0K7RCVWF33RXPA1F22G4Y8TAHPP10RHYWXB2E block-height u30))
    (try! (fake-mine-tokens 'SPEKMXTCAEGD6AF1R7A2Q0H7VNKCP75VVC1AZQRQ block-height u31))
    (try! (fake-mine-tokens 'ST3DG3R65C9TTEEW5BC5XTSY0M1JM7NBE7GVWKTVJ block-height u32))
    (ok true)
  )
)

(define-public (setup-32-miners-2)
  (begin
    (try! (fake-mine-tokens 'SPYRM5RA6GVJXBYV93YFC69VR141PR2XYWZ1SY2N block-height u33))
    (try! (fake-mine-tokens 'SP32R6CKVF1A4K92WM0D5WTCXWV5C587EQM054M0R block-height u34))
    (try! (fake-mine-tokens 'SP11XVFWEZH0WV4YSSM6XGB1TF7GQXTVZR1PBYHX6 block-height u35))
    (try! (fake-mine-tokens 'SP2XCY6PDJ31PX0XR3ZAXDT4KPEGCMTBVDPX9BXHX block-height u36))
    (try! (fake-mine-tokens 'SPG7GD21XQPFH8Z741BPW18Z2P7KCZZRMCVGRNF3 block-height u37))
    (try! (fake-mine-tokens 'SP2X547V1M4Q5R6045FZDW8T1SG9VKZZESVHRCVJD block-height u38))
    (try! (fake-mine-tokens 'SP1XYPMW8Y51C48CYC2WZSNDZFV1ZF1VASRB8V0N0 block-height u39))
    (try! (fake-mine-tokens 'SP2X8TXKAVR82K1Y7FQ5E0DHN89EZ1Y0NKB48V0A4 block-height u40))
    (try! (fake-mine-tokens 'SP37VCT7CZTWH6F8MGNEF2B4WJNBJTH1246VXH41T block-height u41))
    (try! (fake-mine-tokens 'SP2RQ5V4RGEX1ARNDQDT59PDE3KF8Q0P0QNQNKE1T block-height u42))
    (try! (fake-mine-tokens 'SP3TG5T24F6GZPN5GAAGGS4GJKCNK72QQWGSWPEEK block-height u43))
    (try! (fake-mine-tokens 'SP1SA9Q45KW88KPN22KFAEBD6DERTK55KA2ATKAW0 block-height u44))
    (try! (fake-mine-tokens 'SP21Z8CN19DRMFYKWT866RYWHF6ABMAYQDPX0AE7Z block-height u45))
    (try! (fake-mine-tokens 'SPDTJG0WCJMFWN2WFQ7RYHVENCZV4NNBVE6ZVGCS block-height u46))
    (try! (fake-mine-tokens 'SPHXD9JY9TQ3E5EE19FHZBYTYM1AHW02K3YN2BP0 block-height u47))
    (try! (fake-mine-tokens 'SP2JRW5JJSCKXE5EC5RAKRW9D45W8VP9WGYEHESJ block-height u48))
    (try! (fake-mine-tokens 'SPP9BWJMZG5BQSSJPFP3VA7K7ZPGGXST7DT4S59D block-height u49))
    (try! (fake-mine-tokens 'SP3R2A9TAEAH803S5BNN41XKSV388WXHG1X3C4HKC block-height u50))
    (try! (fake-mine-tokens 'SP1AB10E7WW63FM4ZT7XVVGQYZ4AVV1CHH2SH2AR0 block-height u51))
    (try! (fake-mine-tokens 'SPHHQN3HKH1PV02KSXGRW1TDCZCJT7PGKBKCBFBN block-height u52))
    (try! (fake-mine-tokens 'SP1DNABWD881TGZNXJX71KBAKHVBJN66X7B9DYRSP block-height u53))
    (try! (fake-mine-tokens 'SP122H9TQS8R4MC4SY01W916WPQ98WATKFN03TZD6 block-height u54))
    (try! (fake-mine-tokens 'SP2FB5BJBZ27379VKT3VCXXVG0MFMSWME1NQEHXA5 block-height u55))
    (try! (fake-mine-tokens 'SP1YBBT9PKJ7EG01HEDJECJHSM1XZ743XF57N9113 block-height u56))
    (try! (fake-mine-tokens 'SP3CE1FV074FD08TWR10NG856KJTNAWEVR1X5X478 block-height u57))
    (try! (fake-mine-tokens 'SP4DQE1B0YR8M9ME4V6B418QDPNB1BA4AYYJ6AVC block-height u58))
    (try! (fake-mine-tokens 'SP9VB77KSXP8B4ER0ZNN7M5TMNYED1Z062M2ZCDA block-height u59))
    (try! (fake-mine-tokens 'SP2HD9842H0MN8VM5FQTV7Y90BVCJ2V10QEES2B5J block-height u60))
    (try! (fake-mine-tokens 'SP1QR3QDDS2EC2X4AXST9GJ7WZ379KCW5F3ZPG3MN block-height u61))
    (try! (fake-mine-tokens 'SP6H4G4TV3Q06AHDJA6KSXC92AHXD6RPYX0P96YD block-height u62))
    (try! (fake-mine-tokens 'SP7TAG2FMXC3NP45MM1QMKQ53WZR7JK35B6YRV97 block-height u63))
    (try! (fake-mine-tokens 'SPVMBEAX8K88QDNGFKQ5R72XHP954T4NW1G892CQ block-height u64))

    (ok true)
  )
)

(define-public (setup-32-miners-3)
  (begin
    (try! (fake-mine-tokens 'SP21343DGFNT0AKQ32JTDY6T9Y9KBX0YYCBAYWHQ2 block-height u65))
    (try! (fake-mine-tokens 'SP20271WCNJCAAAWC5Y8X7359XES7Q9H1STYFF7XQ block-height u66))
    (try! (fake-mine-tokens 'SPDNS2GB7XP9NYCQNKWC9C2AZ95QD43H3C0T6TFW block-height u67))
    (try! (fake-mine-tokens 'SP19AH4DXP07ZNCHVSX6ZA5XA3R5W5A52NTZ7XD7Z block-height u68))
    (try! (fake-mine-tokens 'SP3ZRX0MY22VHCNM0R0JQ07H1WD682MYA3J55DM1R block-height u69))
    (try! (fake-mine-tokens 'SP22JVA34XZMGAYT6NMF04T2ZAXGGN0N6ADEH8KQ8 block-height u70))
    (try! (fake-mine-tokens 'SPZ28KMRA0CYBNJYBDZ7S7C1FGVQ0JWQ7N59ZBK3 block-height u71))
    (try! (fake-mine-tokens 'SP32D3866JWPXQ3AM02QGHN341WX2RHQQ3P04F2JB block-height u72))
    (try! (fake-mine-tokens 'SPYVY03PYCNZDG2FEPJ24G01JYSAS428HMTH8MEM block-height u73))
    (try! (fake-mine-tokens 'SP1Q96F6Y9S9FS3761B5MR4W571R58C60Y8CEFAXM block-height u74))
    (try! (fake-mine-tokens 'SP14PW50Y3ZBZTBF9ZS9GP3311SKPCYS2QZ0SFSBJ block-height u75))
    (try! (fake-mine-tokens 'SPEPKNX81WFM1A8XY42MQ7SR6Z9167T4Y12NGQH8 block-height u76))
    (try! (fake-mine-tokens 'SP2EZQB32DME65Z21ZGXZFCFCG004PF1X95JQ78C8 block-height u77))
    (try! (fake-mine-tokens 'SP29KQ43KT478MBQN04GBT15G635B8KVM6EP69JZG block-height u78))
    (try! (fake-mine-tokens 'SPAJ642KVCD65WJ6CCNZQWVYKE3BSFDBXWNGWGZD block-height u79))
    (try! (fake-mine-tokens 'SP36FMEBXRHEBCZD5JVEJ6A1MMQPEKBY9DYB9FAHB block-height u80))
    (try! (fake-mine-tokens 'SPN4P9KN9FD5N3XFKZAT9D4D1903VH8NQRWJAFQS block-height u81))
    (try! (fake-mine-tokens 'SP1BXQBVNY641Z29SM8K9S1HWGM8XWD698TFHM403 block-height u82))
    (try! (fake-mine-tokens 'SP2G46VN0FGGCCGNT4JH3YC44YCJ7N3DG5XF7X3S2 block-height u83))
    (try! (fake-mine-tokens 'SP2J8EAGRR0MH35PDXANGS2GFR61CRMPCSB5KHY2H block-height u84))
    (try! (fake-mine-tokens 'SP3XWAVQ7KDD3519JMZ6P333QKZDFNCXHQAPN7X8S block-height u85))
    (try! (fake-mine-tokens 'SP3BD1D8T4MJ1NAF826ZHMT8200BH4SR7802DRYP6 block-height u86))
    (try! (fake-mine-tokens 'SP10HV0FZBGNVRDMA5Z2G1SGJCAVQR2GFHY48WA7W block-height u87))
    (try! (fake-mine-tokens 'SP27K6S19HPQPGZVJR6KXYYPYPFFS6QDB8A0P268A block-height u88))
    (try! (fake-mine-tokens 'SP1R2DJ03AJZ059WKQGGV32Y678TBE907D55TS85Z block-height u89))
    (try! (fake-mine-tokens 'SPF05N0H0V9KH0ZNH2D0MPTM0M2YH8Z1HABYAF3C block-height u90))
    (try! (fake-mine-tokens 'SP2CKKM041YV6E3R2MJ6XG1RAJS10P8ETMMJBHWV7 block-height u91))
    (try! (fake-mine-tokens 'SP1ZCH1JXFGXJ57895JAEE0MD3SJXCJF431H8SND2 block-height u92))
    (try! (fake-mine-tokens 'SPET05JTZ5KS44X9HH2XCJ64TM4TS8B3M3WF878V block-height u93))
    (try! (fake-mine-tokens 'SP13N41XTBD6SFKTKC3SS2DHV3FWT8ZKWRXF7DR0Z block-height u94))
    (try! (fake-mine-tokens 'SP1KQ3YCY94B00YB5RNRPQFS04J56ASQGX5DKRBVA block-height u95))
    (try! (fake-mine-tokens 'SPDAV9XMKBDYVFCB582PR867YH82M8J5PMP36137 block-height u96))

    (ok true)
  )
)

(define-public (setup-32-miners-4)
  (begin
    (try! (fake-mine-tokens 'SP2PCVKR1P2F0H1REYCVWNC0NXWWYSRS57R77MVTJ block-height u97))
    (try! (fake-mine-tokens 'SP1D5A34EPJD0P6KKX7XXZVPN8ZS6YVR43JVCNY6C block-height u98))
    (try! (fake-mine-tokens 'SP32SAY2XE698FRKWMHXRQ1R2FFAVVVTDCDZ12N4 block-height u99))
    (try! (fake-mine-tokens 'SP3MB9GENKJQK4ZERPD5J71ZDYKDXGCMSAT6SHHC6 block-height u100))
    (try! (fake-mine-tokens 'SP2D3SXJH0T28DXKK6P355EA6N74TDWN5RVPRY8FZ block-height u101))
    (try! (fake-mine-tokens 'SP5TFCJZ81CCC53M47KYWZ8HVWEA224VZ8NWN8S9 block-height u102))
    (try! (fake-mine-tokens 'SP1MNJSBXM1S33DNMN7KXZ0KBXGJ80SA5R12VMKFH block-height u103))
    (try! (fake-mine-tokens 'SPP6M7ZS3AQJNX7Z0CDCQGHD9XKB029Y0CXH042 block-height u104))
    (try! (fake-mine-tokens 'SP1MC17BDRTHMT7XPFHQE05JMVYN4BMR3DY1HD0NB block-height u105))
    (try! (fake-mine-tokens 'SP3CM1NTWWK2FBYR64FJTMQWBD3KV6SMT6QGEGF1X block-height u106))
    (try! (fake-mine-tokens 'SP2Y5ZWHMBESK4BMWHPW2RKQZY367SM3TA9R0XDA1 block-height u107))
    (try! (fake-mine-tokens 'SP2HMHZHPB22NXN35KZZJJNZE11345SYY2F5MDTAK block-height u108))
    (try! (fake-mine-tokens 'SP3Q6FG67KEJ0WN6B7A3F5A5RRNMX36X7WPXA24MP block-height u109))
    (try! (fake-mine-tokens 'SP25BG145YT31FK12FX02RCB3Y9KVP5T1005RFMB7 block-height u110))
    (try! (fake-mine-tokens 'SP10CAJHWGXG6CKR4ZATZ2YGKK5CN7TJM7JA2YE42 block-height u111))
    (try! (fake-mine-tokens 'SP113MKW3EK7WTPV1S4XDXPD0HZZ5PNZ15ZC1P7HW block-height u112))
    (try! (fake-mine-tokens 'SP286NVXVT7PFV73R59T91VHBFW2AY8GCCHBHPHYE block-height u113))
    (try! (fake-mine-tokens 'SPBT2N1AWTKGD0AGR9FV0WTTPRKPKF7CQ4ZWYN5W block-height u114))
    (try! (fake-mine-tokens 'SP2NFM4W1WGK0CDRWYZJXYNTRYR6CQ1D59WMTESWR block-height u115))
    (try! (fake-mine-tokens 'SP1HRJR12CDBX1WY01V1ZT56RR0CV720XG0TST616 block-height u116))
    (try! (fake-mine-tokens 'SP3HCJ0H8789DMHWXJM14EJPEJS043B6RT7BNGSG4 block-height u117))
    (try! (fake-mine-tokens 'SP3A16DPJXXNS6M2QD08Z31VTKR3KEZV9S2VMGWS4 block-height u118))
    (try! (fake-mine-tokens 'SP1YH2CX2NM0E8Y19SEDC7WXT69VJA76STVE0BGFY block-height u119))
    (try! (fake-mine-tokens 'SP31J2D2Z76KZV0EHCFZ26SQ1FHYHYS3XQVEHJSAQ block-height u120))
    (try! (fake-mine-tokens 'SP2H7RY7D158F6DY2J1KZANEXXVB8AA8K4A3ZK2Q2 block-height u121))
    (try! (fake-mine-tokens 'SP2Z5H1GKRZPR4ARENPEMNWVA4YTE3Y0MATXQFKTE block-height u122))
    (try! (fake-mine-tokens 'SPXBNK50046XK2RGZDCWPDW6VATGW8S36PH5W5RG block-height u123))
    (try! (fake-mine-tokens 'SP3NF3MCWKFNBKPSK2FAKG51XSWQQ2N2XA4577ZK block-height u124))
    (try! (fake-mine-tokens 'SPTMT06QGK06QD3A26V0PHVDDTSVHS6YD9DV9C4X block-height u125))
    (try! (fake-mine-tokens 'SP3CW8HR7EZ1QE16M9HY93YTXNHP3PMGC8974Y1GQ block-height u126))
    (try! (fake-mine-tokens 'SP3W7KGS778WNHT4PJSMCCTDVXVATT1TP5ZV79D72 block-height u127))
    (try! (fake-mine-tokens 'SP3QDEAD3RRRVG1C3A3AZ82VPND1ARX4C4WYEFFPN block-height u128))

    (ok true)
  )
)

(define-public (set-city-wallet (wallet-address principal))
  ;; specify city wallet address for testing, allows for a test wallet
  ;; to be used in place of specific city wallet defined in constant
  (begin
    (var-set city-wallet wallet-address)
    (ok true)
  )
)
