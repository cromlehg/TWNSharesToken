<p align="center">
  <h1> TWN Shares Token</h1>
  <img src="./logo.png">
</p>

* _Standart_        : ERC20
* _Name_            : TWN Shares
* _Ticket_          : TWN
* _Decimals_        : 18
* _Emission_        : Mintable
* _Crowdsales_      : 2
* _Fiat dependency_ : No
* _Tokens locked_   : Locked

## Smart-contracts description

Contract mint bounty, advisors and founders tokens after each stage finished. 
Crowdsale contracts have special function to retrieve transferred in errors tokens.

### Contracts contains
1. _TWNSharesToken_ - Token contract
2. _Presale_ - Presage contract
3. _ICO_ - ICO contract
4. _Deployer_ - contract with main configuration for production

### How to manage contract
To start working with contract you should follow next steps:
1. Compile it in Remix with enamble optimization flag and compiler 0.4.18
2. Deploy bytecode with MyEtherWallet. Gas 5300000 (actually 5254914).
3. Call 'deploy' function on addres from (3). Gas 4200000 (actually 4160870). 

You can withdraw coins from presale at any time after softcap reached. You should call function _withdraw_ to do this. 
All coins from presale transferred to special eth wallet, which specified in presale configuration.

After each crowdsale stage contract manager must call finishMinting. 

If softcap not reached investors can retrieve coins by calling refund after presale finished.

### How to invest
To purchase tokens investor should send ETH (more than minimum 0.1 EHT) to corresponding crowdsale contract.
Recommended GAS: 200000, GAS PRICE - 21 Gwei.

### Wallets with ERC20 support
1. MyEtherWallet - https://www.myetherwallet.com/
2. Parity 
3. Mist/Ethereum wallet

EXODUS not support ERC20, but have way to export key into MyEtherWallet - http://support.exodus.io/article/128-how-do-i-receive-unsupported-erc20-tokens

Investor must not use other wallets, coinmarkets or stocks. Can lose money.

## Main network configuration

* _Base price_                 : 290 per ETH

### Links

* _Token_ - https://etherscan.io/token/0x456155629affa6c1a7ea0584c37f023c3a2d727a
* _Presale_ - https://etherscan.io/address/0x6bea9fcbb37750cb16473691653d3bf81369cf6d
* _ICO_ - https://etherscan.io/address/0xf56669a5f6d40a3867fdc5befae6f50e02961365 

### Crowdsale stages

#### Presale
* _Minimal insvested limit_    : 1 ETH
* _Softcap_                    : 1000 ETH
* _Hardcap_                    : 20000 ETH
* _Bounty_                     : 2% of total tokens
* _Advisors_                   : 1% of total tokens
* _Founders_                   : 10% of total tokens
* _Developers_                 : 10% of total tokens
* _Start_                      : 
* _End_                        : 
* _Developers tokens wallet_   : 0x2d509f95f7a5F400Ae79b22F40AfB7aCc60dE6ba
* _Bounty tokens wallet_       : 0x565d8E01c63EDF9A5D9F17278b3c2118940e81EF
* _Advisors tokens wallet_     : 0xc422bd1dAc78b1610ab9bEC43EEfb1b81785667D
* _Founders tokens wallet_     : 0xC8C959B4ae981CBCF032Ad05Bd5e60c326cbe35d
* _Contract manager_           : 0x1c7315bc528F322909beDDA8F65b053546d98246
* _ETH Wallets_                : 0xb710d808Ca41c030D14721363FF5608Eabc5bA91, 0xEA15Adb66DC92a4BbCcC8Bf32fd25E2e86a2A770

_Milestones_

1. First day                   : +40%
2. Other                       : +30%

#### ICO
* _Minimal insvested limit_    : 0.1 ETH
* _Hardcap_                    : 50000 ETH
* _Bounty_                     : 2% of total tokens
* _Advisors_                   : 1% of total tokens
* _Founders_                   : 10% of total tokens
* _Developers_                 : 10% of total tokens
* _Start_                      : 
* _End_                        : 
* _Developers tokens wallet_   : 0xFa6229F284387F6ccDb61879c3C12D9896310DB3
* _Bounty tokens wallet_       : 0xeF0a993cC6067AD57a1A55A6B885aEF662334641
* _Advisors tokens wallet_     : 0xb1f9C6653210D7551Ad24C7978B10Fb0bfE5C177
* _Founders tokens wallet_     : 0x5CBB99ab4aa3EFf834217262db11D7486af7Cbfd
* _Contract manager_           : 0x1c7315bc528F322909beDDA8F65b053546d98246
* _ETH Wallets_                : 0x87AF29276bA384b1Df9008Fd573155F7fC47E4D8

_Milestones_
1. 7 days                      : +25%
2. 7 days                      : +15%
3. other                       : +10%


## Kovan network configuration 1

* _Base price_                 : 290 per ETH

### Links

* _Token_ - https://kovan.etherscan.io/token/0x08839853c3bad4ec3b92021a8017cf4e5f3b024f#readContract
* _Presale_ - https://kovan.etherscan.io/address/0x4405fa4258874651731690770017ca363d45ca0c#readContract
* _ICO_ - https://kovan.etherscan.io/address/0x24b96609d7271aae5385f7ca7f63d0ca0f575f74#readContract

### Crowdsale stages

#### Presale
* _Minimal insvested limit_    : 1 ETH
* _Softcap_                    : 1 ETH
* _Hardcap_                    : 2 ETH
* _Bounty_                     : 2% of total tokens
* _Advisors_                   : 1% of total tokens
* _Founders_                   : 10% of total tokens
* _Developers_                 : 10% of total tokens
* _Start_                      : Sun, 12 Nov 2017 00:00:00 GMT
* _End_                        : Mon, 13 Nov 2017 00:00:00 GMT
* _Developers tokens wallet_   : 0x54a67F1507dEb1BFc58ba3ffa94B59fC50EB74BC
* _Bounty tokens wallet_       : 0x66fF3b89e15ACB0B5e69179a2e54c494b89bdB1B
* _Advisors tokens wallet_     : 0xD1BC33B2c89C93E65b0D476B8b50BFee82594847
* _Founders tokens wallet_     : 0xE619BCD3c4609AE269B5eBE5bf0cb7D1Dc70C210
* _Contract manager_           : 0x445c94f566abF8E28739c474c572D356d03Ad999
* _ETH Wallets_                : 0xc56b0d5BBc2bF9b760ebD797DAcD3A683Cb8498F, 0xb8600b335332724Df5108Fc0595002409c2ADbC6

_Milestones_

1. First day                   : +40%
2. Other                       : +30%

#### ICO
* _Minimal insvested limit_    : 0.1 ETH
* _Hardcap_                    : 50000 ETH
* _Bounty_                     : 2% of total tokens
* _Advisors_                   : 1% of total tokens
* _Founders_                   : 10% of total tokens
* _Developers_                 : 10% of total tokens
* _Start_                      : Mon, 13 Nov 2017 13:00:00 GMT
* _End_                        : Wed, 15 Nov 2017 13:00:00 GMT
* _Developers tokens wallet_   : 0x87f2f8a94986D9049147590E12a64fFaa9f946A8
* _Bounty tokens wallet_       : 0x772215cCF488031991f7DCC65e80A7C1FD497E75
* _Advisors tokens wallet_     : 0x6Bb6dBc29f8adb3a7627eA65372FE471509b7698
* _Founders tokens wallet_     : 0x39eCC9E56979c884B28D8c791890E279AB1Ec5F4
* _Contract manager_           : 0x445c94f566abF8E28739c474c572D356d03Ad999
* _ETH Wallets_                : 0x67d78DE2f2819dcBd47426A1ac6a23B9e9C9d300

_Milestones_
1. 7 days                      : +25%
2. 7 days                      : +15%
3. other                       : +10%

### Test audit
#### Investors
##### Presale
* 0xb8600b335332724Df5108Fc0595002409c2ADbC6 - invested 1.1 ETH => 446.6 tokens : https://kovan.etherscan.io/tx/0xe5b544e72072125a4c04a8eb1e89bd6b18f663152b33b01afc3c4ce8b9f7928f
##### Mainsale
* 0xb8600b335332724Df5108Fc0595002409c2ADbC6 - invested 1.1 ETH => 343.75 tokens : https://kovan.etherscan.io/tx/0x51f932ebd15f03514f7e172d6847f69cd0e0c2b4f9aecce5a055586f23708161
* 0x67d78DE2f2819dcBd47426A1ac6a23B9e9C9d300 - invested 0.1 ETH => 28.75 tokens : https://kovan.etherscan.io/tx/0xda57f2e380f52895492f238a5a27e1d7b7c7f8ca071c0a5a9805b6b80bf5b5ea

##### Presale finish operations
Status - softcap reached!
* finishMinting: https://kovan.etherscan.io/tx/0xa06a9b5e19a132bcf4b3578b553e14fb25e5e881ba4797fa075020153e875dc1
* widthraw: https://kovan.etherscan.io/tx/0x6fab02ff9a5caa1eed9f47e0e8eee97657a478d0e0b9b1fc81f3ba45cad0908b

##### Mainsale finish operations
* finishMinting: https://kovan.etherscan.io/tx/0x229b79382e003f0dd3479d20d85a60d4de1f58467c09c99bfd62522cb4b29c67

#### Transfer tokens operations
* Presale time transfer 10 TWN tokens from 0xb8600b335332724Df5108Fc0595002409c2ADbC6 to 0xe2598dd05eb8e8095f24d4f5c39e77579dab19a5: https://kovan.etherscan.io/tx/0xefaba73188ae6c6335b9f89c3755a7f03eb643cb97a5574724caaaa1097e642d

