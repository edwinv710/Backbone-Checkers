class Checkers.Views.SquareShow extends Backbone.View

  template: JST['squares/show']

  tagName: 'td'

  events:
    'click' : 'showAlerts'

  showAlerts: ->
    alert "Clicked Square at #{@model.get('location')}"
    if(@piece != null)
      $(@el).addClass("highlighted")


  initialize: ->
    @model.on('reset', @render, this)
    @model.on('change', @render, this)

  render: ->
    this.id = @model.get('location')
    $(@el).attr('data-x', @model.get('x'))
    $(@el).attr('data-y', @model.get('y'))
    this
