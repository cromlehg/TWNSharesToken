
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

const Presale = artifacts.require('Presale')

contract('Presale', function(wallets) {

  const notOwner = wallets[1]
  
  const newAddr = wallets[2]
  
  before(async function() {
    //Advance to the next block to correctly read time in the solidity "now" function interpreted by testrpc
    await advanceBlock()
  })
  
  beforeEach(async function () {
    this.presale = await Presale.new()
  })	 
  
  describe('not owner reject tests', function () {

      it('setNextSaleAgent reject if not owner', async function () {
        await this.presale.setNextSaleAgent(newAddr, {from: notOwner}).should.be.rejectedWith(EVMThrow)
      })

      it('setSoftcap reject if not owner', async function () {
        await this.presale.setSoftcap(1, {from: notOwner}).should.be.rejectedWith(EVMThrow)
      })

      it('setDevWallet reject if not owner', async function () {
        await this.presale.setDevWallet(newAddr, {from: notOwner}).should.be.rejectedWith(EVMThrow)
      })

      it('setDevLimit reject if not owner', async function () {
        await this.presale.setDevLimit(1, {from: notOwner}).should.be.rejectedWith(EVMThrow)
      })

      it('refund reject if not owner', async function () {
        await this.presale.refund({from: notOwner}).should.be.rejectedWith(EVMThrow)
      })

      it('createTokens reject if not owner', async function () {
        await this.presale.createTokens({from: notOwner}).should.be.rejectedWith(EVMThrow)
      })

      it('widthrawDev reject if not owner', async function () {
        await this.presale.widthrawDev({from: notOwner}).should.be.rejectedWith(EVMThrow)
      })

      it('widthraw reject if not owner', async function () {
        await this.presale.widthraw({from: notOwner}).should.be.rejectedWith(EVMThrow)
      })

      it('finishMinting reject if not owner', async function () {
        await this.presale.finishMinting({from: notOwner}).should.be.rejectedWith(EVMThrow)
      })

  })

})
