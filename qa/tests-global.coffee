suite 'Global Tests', -> 
  test 'page has a valid title', ->
    assert(document.title and document.title.match(/\S/) and document.title.toUpperCase() isnt 'TODO')