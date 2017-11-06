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
    owner = ;  
      
    token = new TWNSharesToken();
    
    presale = new Presale();
    presale.setToken(token);
    token.setSaleAgent(presale);
    presale.setMinInvestedLimit(100000000000000000);  
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
    presale.setStart( );
    presale.setEnd( );    
    presale.setDevLimit(45000000000000000000);
    presale.setWallet( );
    presale.setBountyTokensWallet( );
    presale.setDevTokensWallet( );
    presale.setAdvisorsTokensWallet( );
    presale.setFoundersTokensWallet( );
    presale.setDevWallet( );

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
    ico.setStart( );
    ico.setEnd( );
    ico.setWallet( );
    ico.setBountyTokensWallet( );
    ico.setDevTokensWallet( );
    ico.setAdvisorsTokensWallet( );
    ico.setFoundersTokensWallet( );

    presale.lockChanges();
    ico.lockChanges();
    
    presale.transferOwnership(owner);
    ico.transferOwnership(owner);
    token.transferOwnership(owner);
  }

}

