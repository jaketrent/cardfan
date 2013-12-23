class Deck

  constructor: ->
    @cards = []

  add: (card) ->
    card.addClass 'is-in-deck is-facedown'
    @cards.push card

  draw: ->
    card = @cards.pop()
    card.removeClass 'is-in-deck is-facedown'
    card