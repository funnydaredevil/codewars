require 'rspec'
require './sum_by_factor'

describe 'sum of pairs' do
  let(:result_1) { [[2, 12], [3, 27], [5, 15]] }
  it 'Basic tests' do
    expect(sumOfDivided([12, 15])).to eq result_1
  end

  let(:result_2) { [[2, 54], [3, 135], [5, 90], [7, 21]] }
  xit 'Basic tests [15, 21, 24, 30, 45]' do
    expect(sumOfDivided([15, 21, 24, 30, 45])).to eq result_2
  end

  let(:result_3) { [[2, 54], [3, 45], [5, 0], [7, 21]] }
  xit 'Basic tests [15, 21, 24, 30, -45]' do
    expect(sumOfDivided([15, 21, 24, 30, -45])).to eq result_3
  end

  let(:result_4) {
    [[2, -61_548], [3, -4209], [5, -28_265], [23, -4209], [31, -31_744], [53, -72_769], [61, -4_209], [1_373, -72_769], [5_653, -28_265], [7_451, -29_804]]
  }
  xit 'Basic tests [107, 158, 204, 100, 118, 123, 126, 110, 116, 100]' do
    expect(sumOfDivided([107, 158, 204, 100, 118, 123, 126, 110, 116, 100])).to eq result_4
  end
end
