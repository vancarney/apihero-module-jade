pugMod = require '../src/apihero-module-pug'

describe 'pug module test suite', ->
    
	it 'should make pug available by reference', =>
		pugMod.pug.should.exist
    
	it 'should init', (done)=>
		pugMod.init.should.be.a.function
		pugMod.init app, {}, (e, res)=>
		  expect(e).to.be.null
		  done()
		  

