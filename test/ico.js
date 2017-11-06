
import ether from './helpers/ether'
import {advanceBlock} from './helpers/advanceToBlock'
import {increaseTimeTo, duration} from './helpers/increaseTime'
import latestTime from './helpers/latestTime'
import EVMThrow from './helpers/EVMThrow'

const BigNumber = web3.BigNumber

const should = require('chai')
  .use(require('chai-as-promised'))
  .use(require('chai-bignumber')(BigNumber))
  .should()

const ICO = artifacts.require('ICO')

contract('ICO', function(wallets) {

  const notOwner = wallets[1]
  
  const newAddr = wallets[2]
  
  before(async function() {
    //Advance to the next block to correctly read time in the solidity "now" function interpreted by testrpc
    await advanceBlock()
  })
  
  beforeEach(async function () {
    this.iCO = await ICO.new()
  })	 
  
  describe('not owner reject tests', function () {

      it('finishMinting reject if not owner', async function () {
        await this.iCO.finishMinting({from: notOwner}).should.be.rejectedWith(EVMThrow)
      })

      it('createTokens reject if not owner', async function () {
        await this.iCO.createTokens({from: notOwner}).should.be.rejectedWith(EVMThrow)
      })

  })

})
