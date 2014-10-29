chai = require 'chai'
expect = chai.expect
Fizzbuzz = require '../src/coffeebuzz'

describe 'Fizzbuzz', ->
  
  fizzbuzz = null
 
  before ->
    fizzbuzz = new Fizzbuzz

  it 'should know when a number is divisiable by 3', ->
    expect(fizzbuzz.isDivisibleByThree(3)).to.be.true

  it 'should know when a number not divisiable by 3', ->
    expect(fizzbuzz.isDivisibleByThree(1)).to.not.be.true