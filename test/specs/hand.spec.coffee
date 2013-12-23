describe 'Hand', ->
  cardFixture = """
    <div />
  """

  describe '#add', ->

    hand = null
    card = null

    beforeEach ->
      card = new Card $(cardFixture).clone()
      hand = new Hand()
      hand.add card

    it 'adds the object to the cards array', ->
      hand.cards.length.should.eql 1

    it 'it adds the class is-in-hand to card', ->
      hand.cards[0].hasClass('is-in-hand').should.be.true

    it 'orders cards in an increasing z-index', ->
      hand.add new Card $(cardFixture).clone()
      hand.add new Card $(cardFixture).clone()
      hand.add new Card $(cardFixture).clone()

      for card, indx in hand.cards
        if indx > 0
          card.css('z-index').should.be.gt hand.cards[indx - 1].css('z-index')
