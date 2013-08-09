class Checkers.Views.PiecesIndex extends Backbone.View

  template: JST['pieces/index']


  initialize: ->
  	@collection.on('reset', @render, this)


  render: ->
  	for i in [0...@collection.length] by 1
      @piece = @collection.at(i)
      pieceView = new Checkers.Views.PieceShow({model: @piece})
      if 'true' in [@piece.get('alive')]
        x = @piece.get('x')
        y = @piece.get('y')
        alert "alive at #{x} #{y}"
        $("td[data-x='#{x}'][data-y='#{y}']").append(pieceView.render().el)