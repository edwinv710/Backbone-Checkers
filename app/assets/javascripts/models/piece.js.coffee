class Checkers.Models.Piece extends Backbone.Model

  defaults:
    locaton : ''
    color : 'white'
    alive : 'true'
    symbol : '&#9675;'
    x: ''
    y: ''
    isTurn: true
    inMovement: false

###
  this.isEmpty: (forObjectList, againstObjectList, xLocation, yLocation) ->
    isEmpty = forObjectList.isEmpty(xLocation, yLocation)
    if isEmpty == true
      isEmpty = forObjectList.isEmpty(xLocation, yLocation)
    isEmpty


  setLocation: (xlocation, ylocation) ->
    @x = xLocation
    @y = ylocation
    @location = (yLocation * 8) + xLocation
    
  remove: ->
    @alive = 'false'
    @x = ''
    @y = ''
    @location = ''
###