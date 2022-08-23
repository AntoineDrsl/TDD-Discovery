# TO DO: Write specs for you roman_style method

require 'roman_style'

shared_examples 'returns a roman number from an arabic number 2' do |arabic_number, roman_number|
  it { expect(roman_style(arabic_number)).to eq(roman_number) }
end

describe '#roman_style' do
  it 'return an error if first argument is not an integer.' do
    error = 'First argument must be an integer'

    expect(roman_style('hi')).to eq(error)
    expect(roman_style([1, 2, 3])).to eq(error)
    expect(roman_style(1.1)).to eq(error)
  end

  it_behaves_like 'returns a roman number from an arabic number 2', 4, 'IV'
  it_behaves_like 'returns a roman number from an arabic number 2', 90, 'XC'

  it 'returns a roman number from an arabic number' do
    expect(roman_style(1)).to eq('I')
    expect(roman_style(3)).to eq('III')
    expect(roman_style(5)).to eq('V')
    expect(roman_style(7)).to eq('VII')
    expect(roman_style(10)).to eq('X')
    expect(roman_style(11)).to eq('XI')
    expect(roman_style(17)).to eq('XVII')
    expect(roman_style(50)).to eq('L')
    expect(roman_style(55)).to eq('LV')
    expect(roman_style(100)).to eq('C')
    expect(roman_style(500)).to eq('D')
    expect(roman_style(1000)).to eq('M')
    expect(roman_style(2022)).to eq('MMXXII')
    expect(roman_style(2777)).to eq('MMDCCLXXVII')
  end
end
