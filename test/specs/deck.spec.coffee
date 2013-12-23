describe 'Deck', ->

  deck = null
  cardFixture = """
    <div />
  """

  beforeEach ->
    deck = new Deck()

  it 'has a place for, but no cards', ->
    should.exist deck.cards
    deck.cards.length.should.eql 0

  describe '#add', ->

    it 'puts a card in the deck', ->
      deck.add new Card $ cardFixture
      deck.add new Card $ cardFixture
      deck.cards.length.should.eql 2

    it 'adds is-in-deck class to card', ->
      deck.add new Card $ cardFixture
      deck.cards[0].hasClass('is-in-deck').should.be.true

    it 'adds is-facedown class to card', ->
      deck.add new Card $ cardFixture
      deck.cards[0].hasClass('is-facedown').should.be.true

  describe '#draw', ->

    it 'removes the last card from the deck', ->
      deck.add new Card $ cardFixture
      deck.add new Card $ cardFixture
      deck.draw()
      deck.cards.length.should.eql 1

    it 'returns the drawn card', ->
      deck.add new Card $ cardFixture
      card = deck.draw()
      should.exist card
      card.constructor.name.should.eql 'Card'

    it 'removes the is-in-hand class from the card', ->
      deck.add new Card $ cardFixture
      card = deck.draw()
      card.hasClass('is-in-deck').should.be.false

    it 'removes the is-facedown class from the card', ->
      deck.add new Card $ cardFixture
      card = deck.draw()
      card.hasClass('is-facedown').should.be.false
