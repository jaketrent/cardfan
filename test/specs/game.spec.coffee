describe 'Game', ->

  it 'exists', ->
    should.exist new Game()

  it 'has a deck', ->
    deck = new Game().deck
    should.exist deck
    deck.constructor.name.should.eql 'Deck'

  it 'has a hand', ->
    hand = new Game().hand
    should.exist hand
    hand.constructor.name.should.eql 'Hand'

  describe '#init', ->

    it 'creates 10 cards in the deck', ->
      game = new Game()
      game.init()
      game.deck.cards.length.should.eql 10




