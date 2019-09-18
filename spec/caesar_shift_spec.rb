require 'caesar_shift'

describe '#moving_shift' do
  it 'increments a given letter by the number given as a parameter' do
    expect(moving_shift('a', 1)).to eq(['b'])
  end
  it 'increments a given letters by the number and plus one for additional letters' do
    expect(moving_shift('ab',1)).to eq(['b','d'])
  end

  it 'increments by numbers other than one' do
    expect(moving_shift('c', 2)).to eq(['e'])
  end

  it 'handles string with more than five characters' do
    expect(moving_shift('abcdef', 1)).to eq(['bd','f', 'h', 'j', 'l'])
  end
end

describe '#demoving_shift' do

end
