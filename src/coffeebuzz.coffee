class Fizzbuzz

  isDivisibleByThree: (number) ->
    @isDivisibleBy(3, number)

  isDivisibleByFive: (number) ->
    @isDivisibleBy(5, number)

  isDivisibleByFifteen: (number) ->
    @isDivisibleBy(15, number)

  isDivisibleBy: (divisor, number) ->
    number % divisor == 0

  try: (number) ->
    result = number
    if @isDivisibleByThree   (number)
      result = "fizz"
    if @isDivisibleByFive    (number)
      result = "buzz"
    if @isDivisibleByFifteen (number)
      result = "fizzbuzz"
    result

module.exports = Fizzbuzz