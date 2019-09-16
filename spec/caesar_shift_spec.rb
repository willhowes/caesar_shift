require 'caesar_shift'

describe '#moving_shift' do
  it 'increments a given letter by the number given as a parameter' do
    expect(moving_shift('a', 1)).to eq(['b'])
  end
end

describe '#demoving_shift' do

end
