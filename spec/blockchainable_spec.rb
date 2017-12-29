RSpec.describe Blockchainable do
  it 'does something useful' do
    chained_model = ChainedModel.new

    expect(chained_model.hash).to be nil

    chained_model.hash!

    expect(chained_model.hash).not_to be nil
  end
end
