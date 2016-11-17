require_relative '../lib/array_challenge'

describe 'main.array_challenge' do
  it 'raises an argument error if no argument is present' do
    expect { array_challenge() }.to raise_error(ArgumentError)
  end

  it 'returns an array' do
    result = array_challenge('whatever input')
    expect(result).to be_an(Array)
  end

  it 'returns the given argument if it is a 1-dimension array' do
    result = array_challenge([1, 2, 3])
    expect(result).to eq([1, 2, 3])
  end
  
  it 'returns a flattened array for a 2 dimension array' do
    result = array_challenge([1, [2,3], 4])
    expect(result).to eq([1, 2, 3, 4])
  end

  it 'returns a flattened array for a 3 or more dimension array' do
    result = array_challenge([1, [2, [3, [4, 5]], 6], 7, [8, 9]])
    expect(result).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9])
  end
end
