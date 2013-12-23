#= require components/jquery/jquery.js
#= require components/underscore/underscore.js

#= require_tree game

$ ->

  game = new Game()
  game.init()

#  hand = new Hand()
#
#  $('.add').on 'click', (evt) ->
#    card = genCard $('.card.is-in-hand').length
#    appendCard card
#    hand.add card
#
#  # temp
#  genCard = (cardIndx) ->
#    newCard = $('#card').clone()
#    newCard.removeAttr 'id'
#    newCard.addClass "card-#{cardIndx}"
#    newCard
#
#  # temp
#  appendCard = (card) ->
#    $('body').append card
