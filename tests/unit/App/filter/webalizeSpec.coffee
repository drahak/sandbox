goog.require 'App'
goog.require 'App.webalize'

describe 'Webalize filter', ->
  filter = null
  beforeEach module 'App'
  beforeEach inject ($filter) ->
    filter = $filter 'webalize'

  it 'webalize spaces', ->
    result = filter 'some might say'
    expect(result).toBe 'some-might-say'