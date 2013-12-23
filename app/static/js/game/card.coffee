
class Card

  constructor: (@$el) ->

  @getRotateValue: (indx, numCards) ->
    startingDegree = -45
    degreesInSection = 90 / numCards

    deg = startingDegree + (degreesInSection * indx) + (degreesInSection / 2)

    "#{deg}deg"

  toggleFaceDown: ->
    @toggleClass 'is-facedown'



  addClass: (classes) ->
    @$el.addClass classes

  removeClass: (classes) ->
    @$el.removeClass classes

  toggleClass: (classes) ->
    @$el.toggleClass classes

  hasClass: (classes) ->
    @$el.hasClass classes

  css: (map) ->
    @$el.css map
