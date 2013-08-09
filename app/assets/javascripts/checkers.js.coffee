window.Checkers =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: -> 
    new Checkers.Routers.Games()
    Backbone.history.start()

$(document).ready ->
  Checkers.init()
