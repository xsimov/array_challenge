require_relative '../lib/array_challenge'

describe 'main.array_challenge' do
  it 'raises an argument error if no argument is present' do
    expect { array_challenge() }.to raise_error(ArgumentError)
  end
end