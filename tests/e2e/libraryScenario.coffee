util = require 'util'

describe 'Library page view', ->
  ptor = protractor.getInstance()

  it 'filters library list', ->
    ptor.get 'http://localhost/sandbox/client/libraries'

    search = ptor.findElement protractor.By.input 'search'
    search.clear()
    search.sendKeys 'AngularJS'

    library = ptor.findElement protractor.By.repeater('library in libraries').row(1)
    expect(library.getText()).toContain 'AngularJS'
