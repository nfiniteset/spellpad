describe SpellsController do
  describe '#GET index' do
    let(:spell) { FactoryGirl.create :spell }

    it 'assigns spells' do
      expect(assigns @spells).to include @spell
    end
  end
end