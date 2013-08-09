class Checkers.Views.PieceShow extends Backbone.View

  template: JST['pieces/show']

  initialize: ->
  	@model.on('reset', @render, this)

  render: ->
    alert "about to render piece"
    $(@el).html(@template(model: @model))
    this
