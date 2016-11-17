require_relative '../lib/array_challenge'

describe 'main.array_challenge' do
  it 'raises an argument error if no argument is present' do
    expect { array_challenge() }.to raise_error(ArgumentError)
  end

  it 'returns an array' do
    expect(array_challenge('something')).to be_an(Array)
  end
end
