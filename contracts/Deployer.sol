pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/ownership/Ownable.sol';
import './TWNSharesToken.sol';
import './Presale.sol';
import './ICO.sol';

contract Deployer is Ownable {

  Presale public presale;  
 
  ICO public ico;

  TWNSharesToken public token;

  function deploy() public onlyOwner {
    owner = 0x1c7315bc528F322909beDDA8F65b053546d98246;  
      
    token = new TWNSharesToken();
    
    presale = new Presale();
    presale.setToken(token);
    token.setSaleAgent(presale);
    presale.setMinInvestedLimit(1000000000000000000);  
    presale.setPrice(290000000000000000000);
    presale.setBountyTokensPercent(2);
    presale.setAdvisorsTokensPercent(1);
    presale.setDevTokensPercent(10);
    presale.setFoundersTokensPercent(10);
    
    // fix in prod
    presale.setSoftcap(1000000000000000000000);
    presale.setHardcap(20000000000000000000000);
    presale.addBonus(1,40);
    presale.addBonus(100,30);
//    presale.setStart( );
//    presale.setEnd( );    
    presale.setDevLimit(6000000000000000000);
    presale.setWallet(0xb710d808Ca41c030D14721363FF5608Eabc5bA91);
    presale.setBountyTokensWallet(0x565d8E01c63EDF9A5D9F17278b3c2118940e81EF);
    presale.setDevTokensWallet(0x2d509f95f7a5F400Ae79b22F40AfB7aCc60dE6ba);
    presale.setAdvisorsTokensWallet(0xc422bd1dAc78b1610ab9bEC43EEfb1b81785667D);
    presale.setFoundersTokensWallet(0xC8C959B4ae981CBCF032Ad05Bd5e60c326cbe35d);
    presale.setDevWallet(0xEA15Adb66DC92a4BbCcC8Bf32fd25E2e86a2A770);

    ico = new ICO();
    ico.setToken(token); 
    presale.setNextSaleAgent(ico);
    ico.setMinInvestedLimit(100000000000000000);
    ico.setPrice(250000000000000000000);
    ico.setBountyTokensPercent(2);
    ico.setAdvisorsTokensPercent(1);
    ico.setDevTokensPercent(10);
    ico.setFoundersTokensPercent(10);

    // fix in prod
    ico.setHardcap(50000000000000000000000);
    ico.addBonus(7,25);
    ico.addBonus(7,15);
    ico.addBonus(100,10);
//    ico.setStart( );
//    ico.setEnd( );
    ico.setWallet(0x87AF29276bA384b1Df9008Fd573155F7fC47E4D8);
    ico.setBountyTokensWallet(0xeF0a993cC6067AD57a1A55A6B885aEF662334641);
    ico.setDevTokensWallet(0xFa6229F284387F6ccDb61879c3C12D9896310DB3);
    ico.setAdvisorsTokensWallet(0xb1f9C6653210D7551Ad24C7978B10Fb0bfE5C177);
    ico.setFoundersTokensWallet(0x5CBB99ab4aa3EFf834217262db11D7486af7Cbfd);

    presale.lockChanges();
    ico.lockChanges();
    
    presale.transferOwnership(owner);
    ico.transferOwnership(owner);
    token.transferOwnership(owner);
  }

}

