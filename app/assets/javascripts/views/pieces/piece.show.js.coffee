class Checkers.Views.PieceShow extends Backbone.View

  template: JST['pieces/show']

  initialize: ->
  	@model.on('reset', @render, this)

  render: ->
    $(@el).html(@template(model: @model))
    this
