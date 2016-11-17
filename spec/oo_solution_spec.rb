require_relative '../lib/oo_solution'

describe 'Array#my_flatten' do
  it 'returns an array' do
    result = [].my_flatten
    expect(result).to be_an(Array)
  end

  it 'returns the given argument if it is a 1-dimension array' do
    result = [1, 2, 3].my_flatten
    expect(result).to eq([1, 2, 3])
  end
  
  it 'returns a flattened array for a 2 dimension array' do
    result = [1, [2, 3], 4].my_flatten
    expect(result).to eq([1, 2, 3, 4])
  end

  it 'returns a flattened array for a 3 or more dimension array' do
    result = [1, [2, [3, [4, 5]], 6], 7, [8, 9]].my_flatten
    expect(result).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9])
  end
end
