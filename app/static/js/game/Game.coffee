class Game

  constructor: ->
    @deck = new Deck
    @hand = new Hand

  init: ->
    @_genCards()
    @_bindEvents()

  _bindEvents: =>
    $('.card.is-in-deck').on 'click', (evt) =>
      card = @deck.draw()
      @hand.add card

  _genCards: ->
    _.each _.range(0, 10), (indx) =>
      @deck.add new Card @_cloneCardTemplate indx

  # temp
  _cloneCardTemplate: (indx)->
    newCard = $('#card').clone()
    newCard.removeAttr 'id'
    newCard.addClass "card-#{indx}"
    $('body').append newCard
    newCard