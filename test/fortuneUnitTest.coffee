fortune = require("../lib/fortune.coffee")
expect = require("chai").expect
suite "Fortune cookie tests", ->
  test "getFortune() should return a fortune", ->
    expect typeof fortune.getFortune() is "string"
    return

  return