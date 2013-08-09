class Checkers.Views.SquaresIndex extends Backbone.View

  template: JST['squares/index']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template)
    for i in [0...8] by 1
      for j in [0...8] by 1
        square = @collection.at((8*i+j))
        object = @blackPieces.atLocation(j,i)
        if object == null
          object = @whitePieces.atLocation(j,i)
        #alert "There are #{@collection.length}"
        modelView = new Checkers.Views.SquareShow({model: square, piece: object})
        $(@el).find("#row-#{i}").append(modelView.render().el)
    this
