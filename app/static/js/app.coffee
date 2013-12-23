#= require components/jquery/jquery.js
#= require components/underscore/underscore.js

$ ->

  $('body').on 'click', '.card', ->
    $(this).toggleClass 'is-facedown'

  $('.add').on 'click', (evt) ->
    addCardToHand()
    rearrangeHand()

  addCardToHand = ->
    appendCard genCard $('.card.is-in-hand').length, 'is-in-hand'

  genCard = (cardIndx, optionalClasses) ->
    newCard = $('#card').clone()
    newCard.removeAttr 'id'
    newCard.addClass "card-#{cardIndx}"
    if optionalClasses?
      newCard.addClass optionalClasses
    newCard

  appendCard = (card) ->
    $('body').append card

  rearrangeHand = ->

    getRotateValue = (indx, numCards) ->
      "0deg"

    $cardsInHand = $('.card.is-in-hand')
    numCardsInHand = $cardsInHand.length

    _.each $cardsInHand, (card, indx) ->
      rotate = getRotateValue indx, numCardsInHand

      $(card).css
        transform: "rotate(#{rotate})"
