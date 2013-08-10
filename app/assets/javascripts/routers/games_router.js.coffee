class Checkers.Routers.Games extends Backbone.Router

  routes:
    "" : "index"

  initialize: ->
    @squares = new Checkers.Collections.Squares()
    @whitePieces = new Checkers.Collections.Pieces()
    @blackPieces = new Checkers.Collections.Pieces()

  createSquares: ->
    color = 'whit'
    for i in [0..7] by 1
      for j in [0..7] by 1
        square = new Checkers.Models.Square({location: "#{i*8+j}", x: "#{j}", y: "#{i}"})
        @squares.add(square)

  createBalckPieces: ->
    blackPiecesArray = new Array()
    for i in [0...4] by 1
      blackPiecesArray[i] = {location: "#{i*2+1}", color: "black", symbol: "&#9679;", x: "#{i*2+1}", y: "0"}
    for i in [4...8] by 1
      blackPiecesArray[i] = {location: "#{i*2}", color: "black", symbol: "&#9679;", x: "#{(i-4)*2}", y: "1"}
    for i in [8...12] by 1
      blackPiecesArray[i] = {location: "#{i*2+1}", color: "black", symbol: "&#9679;", x: "#{(i-8)*2+1}", y: "2" }
    @blackPieces.reset(blackPiecesArray)
    

  createWhitePieces: ->
    whitePiecesArray = new Array()
    for i in [0...4] by 1
      whitePiecesArray[i] = {location: "#{i*2+40}", x: "#{i*2}", y: "5"}
    for i in [4...8] by 1
      whitePiecesArray[i] = {location: "#{i*2+40+1}", x: "#{(i-4)*2+1}", y: "6"}
    for i in [8...12] by 1
      whitePiecesArray[i] = {location: "#{i*2+40}", x: "#{(i-8)*2}", y: "7"}  
    @whitePieces.reset(whitePiecesArray)

  index: ->    
    @createSquares()
    #alert "Square Created"
    @createWhitePieces()
    #alert "White"
    @createBalckPieces()
    #alert "Black"
   
    boardView = new Checkers.Views.SquaresIndex({collection: @squares, whitePieces: @whitePieces, blackPieces: @blackPieces})
    whitePiecesView = new Checkers.Views.PiecesIndex(collection: @whitePieces, blackPieces: @blackPieces)
    blackPiecesView = new Checkers.Views.PiecesIndex(collection: @blackPieces, blackPieces: @blackPieces)

   # alert "views"
   
    $('#container').html(boardView.render().el)
   
    whitePiecesView.render()
    blackPiecesView.render()