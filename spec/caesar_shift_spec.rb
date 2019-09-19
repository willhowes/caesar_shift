require 'caesar_shift'

describe '#moving_shift' do
  it 'increments a given letter by the number given as a parameter' do
    expect(moving_shift('a', 1)).to eq(['b', '', '', '', ''])
  end
  it 'increments a given letters by the number and plus one for additional letters' do
    expect(moving_shift('ab',1)).to eq(['b','d', '', '', ''])
  end

  it 'increments by numbers other than one' do
    expect(moving_shift('c', 2)).to eq(['e', '', '', '', ''])
  end

  it 'handles string with more than five characters' do
    expect(moving_shift('abcdef', 1)).to eq(['bd','f', 'h', 'j', 'l'])
  end

  it 'handles a string of more than six character' do
    expect(moving_shift('abcdefg', 1)).to eq(['bd','fh', 'j', 'l', 'n'])
  end

  it 'handles letters later in the alphabet' do
    expect(moving_shift('z', 1)).to eq(['a','','','',''])
  end

  it 'handles strings of eight characters' do
    expect(moving_shift('abcdefgh', 1)).to eq(['bd','fh', 'jl', 'np', ''])
  end

  it 'handles strings of nine characters' do
    expect(moving_shift('abcdefghi', 1)).to eq(['bd','fh', 'jl', 'np', 'r'])
  end
end

describe '#demoving_shift' do

end
