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
* _Tokens locked_   : No

## Smart-contracts description

Contract mint bounty, advisors and founders tokens after each stage finished. 
Crowdsale contracts have special function to retrieve transferred in errors tokens.

### Contracts contains
1. _TWNSharesToken_ - 
2. _Presale_ - 
3. _ICO_ -
4. _Deployer_ - contract with main configuration for production

### How to manage contract
To start working with contract you should follow next steps:
1. Compile it in Remix with enamble optimization flag and compiler 0.4.18
2. Deploy bytecode with MyEtherWallet. Gas 5100000 (actually 5019453).
3. Call 'deploy' function on addres from (3). Gas 4000000 (actually 3979551). 

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

* _Base price_                 : 200 per ETH
* _Minimal insvested limit_    : 0.1 ETH

### Crowdsale stages

#### Presale
* _Softcap_                    : 1000 ETH
* _Hardcap_                    : 20000 ETH
* _Bounty_                     : 2% of total tokens
* _Advisors_                   : 1% of total tokens
* _Founders_                   : 10% of total tokens
* _Developers_                 : 10% of total tokens
* _Start_                      : 
* _End_                        : 
* _Founders tokens wallet_     : 
* _Bounty tokens wallet_       : 
* _Advisors tokens wallet_     : 
* _Founders tokens wallet_     : 
* _Contract manager_           : 
* _ETH Wallets_                : , 0xEA15Adb66DC92a4BbCcC8Bf32fd25E2e86a2A770

_Milestones_

1. First day                   : +40%
2. Other                       : +30%

#### ICO
* _Hardcap_                    : 50000 ETH
* _Bounty_                     : 2% of total tokens
* _Advisors_                   : 1% of total tokens
* _Founders_                   : 10% of total tokens
* _Developers_                 : 10% of total tokens
* _Start_                      : 
* _End_                        : 
* _Founders tokens wallet_     : 
* _Bounty tokens wallet_       : 
* _Advisors tokens wallet_     : 
* _Founders tokens wallet_     : 
* _Contract manager_           : 
* _ETH Wallets_                : 

_Milestones_
1. 7 days                      : +25%
2. 7 days                      : +15%
3. other                       : +10%


