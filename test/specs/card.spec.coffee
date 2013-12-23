describe 'Card', ->

  fixtureCardDom = """
    <div />
  """
  $el = null

  beforeEach ->
    $el = $(fixtureCardDom)

  it 'exists', ->
    should.exist new Card()

  describe '#toggleFaceDown', ->

    it 'starts with no is-facedown class', ->
      new Card($el).hasClass('is-facedown').should.be.false

    it 'adds is-facedown class', ->
      card = new Card $el
      card.toggleFaceDown()
      card.$el.hasClass('is-facedown').should.be.true

  describe '#getRotateValue', ->

    it 'puts one card in the middle', ->
      Card.getRotateValue(0, 1).should.eql '0deg'

    it 'splits 2 cards in 45 deg sections', ->
      Card.getRotateValue(0, 2).should.eql '-22.5deg'
      Card.getRotateValue(1, 2).should.eql '22.5deg'

    it 'splits 3 cards in 30 deg sections', ->
      Card.getRotateValue(0, 3).should.eql '-30deg'
      Card.getRotateValue(1, 3).should.eql '0deg'
      Card.getRotateValue(2, 3).should.eql '30deg'

