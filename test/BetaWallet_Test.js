const BetaToken = artifacts.require('./BetaToken.sol');

contract('BetaToken', (accounts) => {
    it('set the total supply upon deployment', () => {
        return BetaToken.deployed().then(i=> {
            return i.totalSupply();
        })
        .then(ts => {
            assert.equal(ts.toNumber(), 1000000, 'sets the total supply to 1000000');
        })
    })
})