chai = require 'chai'
expect = chai.expect
Fizzbuzz = require '../src/coffeebuzz'

describe 'Numbers that are divisiable by 3,5,15', ->
  
  fizzbuzz = null
 
  before ->
    fizzbuzz = new Fizzbuzz

  it '3 is', ->
    expect(fizzbuzz.isDivisibleByThree(3)).to.be.true
  it '5 is', ->
    expect(fizzbuzz.isDivisibleByFive(5)).to.be.true
  it 'and 15 is', ->
    expect(fizzbuzz.isDivisibleByFifteen(15)).to.be.true

  describe 'Numbers that are not divisiable by 3,5,15', ->
    
    it '1 is not', ->
      expect(fizzbuzz.isDivisibleByThree(1)).to.not.be.true

    it '22 isn\'t either', ->
      expect(fizzbuzz.isDivisibleByFive(1)).to.not.be.true

  describe 'for fun numbers are swaped for "fizz" or "buzz"', ->
    
    it 'multipules of 3 are replaced with "fizz"', ->
      expect(fizzbuzz.try(3)).to.equal 'fizz'

    it 'multipules of 5 are replaced with "buzz"', ->
      expect(fizzbuzz.try(5)).to.equal 'buzz'

    it 'multipules of 15 are replaced with "fizzbuzz"', ->
      expect(fizzbuzz.try(15)).to.equal 'fizzbuzz'

    it 'or you just get the number back', ->
      expect(fizzbuzz.try(7)).to.equal 7  
