Browser = require("zombie")
assert  = require("chai").assert
browser = undefined
host    = "http://localhost:3003"
suite "Cross-Page Tests", ->
  setup ->
    browser = new Browser()
    return

  # test "requesting a group rate quote from the hood river tour page" + "should populate the rereferrer field", (done) ->
  #   referrer = "#{host}/tours/hood-river"
  #   browser.visit referrer, ->
  #     browser.clickLink ".requestGroupRate", ->
  #       assert browser.field("referrer").value is referrer
  #       done()
  #       return

  #     return

  #   return

  # test "requesting a group rate from the oregon coast tour page should " + "populate the referrer field", (done) ->
  #   referrer = "#{host}/tours/oregon-coast"
  #   browser.visit referrer, ->
  #     browser.clickLink ".requestGroupRate", ->
  #       assert browser.field("referrer").value is referrer
  #       done()
  #       return

  #     return

  #   return
  test "visit root page should show an image", (done) ->
    referrer = "#{host}"
    browser.visit referrer, ->
      assert browser.evaluate("$('img').attr('src')") is "/img/logo.png"
      done()
      return
    return

  # test "visiting the \"request group rate\" page dirctly should result " + "in an empty referrer field", (done) ->
  #   browser.visit "#{host}/tours/request-group-rate", ->
  #     assert browser.field("referrer").value is ""
  #     done()
  #     return

  #   return

  return
