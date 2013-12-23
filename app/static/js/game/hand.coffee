class Hand

  cards: []

  add: (card) ->
    card.addClass 'is-in-hand'
    @cards.push card
    @rearrange()

  rearrange: ->
    _.each @cards, (card, indx) =>
      rotate = Card.getRotateValue indx, @cards.length

      card.css
        transform: "rotate(#{rotate})"