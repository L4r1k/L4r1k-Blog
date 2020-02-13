describe Article, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:article)).to be_valid
  end
end
