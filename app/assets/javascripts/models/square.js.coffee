class Checkers.Models.Square extends Backbone.Model

  defaults:
    color : 'white'
    isOccupied : 'no'
    isHighlighted: 'no'
    location: ''
    x: ''
    y: ''

  setLocation: (xlocation, ylocation) ->
    @x = xLocation
    @y = ylocation
    @location = (yLocation * 8) + xLocation