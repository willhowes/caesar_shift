require 'caesar_shift'

describe '#moving_shift' do
  it 'increments a given letter by the number given as a parameter' do
    expect(moving_shift('a', 1)).to eq(['b'])
  end
  it 'increments a given letters by the number and plus one for additional letters' do
    expect(moving_shift('ab',1)).to eq(['b','d'])
  end
end

describe '#demoving_shift' do

end
