class Checkers.Collections.Pieces extends Backbone.Collection

  model: Checkers.Models.Piece

  atLocation: (xloc, yloc) ->
    object = null
    for i in [0...@length]
      x = @at(i).get('x')
      y = @at(i).get('y')
      if ((xLoc == x) && (yLoc == y) && (object == null))
        object = @get(i)
    object


  isEmpty: (xLoc, yLoc) ->
    isEmpty = true
    for i in [0...@length]
      x = @at(i).get('x')
      y = @at(i).get('y')
      if ((xLoc == x) && (yLoc == y) && (isEmpty == true))
        isEmpty	= false
    isEmpty

  isTurn: -> 
    this.at(0)