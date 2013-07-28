describe 'Spellpad.models.Spell', ->

  beforeEach ->
    @model = new Spellpad.models.Spell();

  it 'exists', ->
    expect(@model).not.toBeNull()