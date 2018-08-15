require 'rspec'
require './sum_of_pairs'

describe "sum of pairs" do
  let(:l1) { [1, 4, 8, 7, 3, 15] }
  let(:l2) { [1, -2, 3, 0, -6, 1] }
  let(:l3) { [20, -13, 40] }
  let(:l4) { [1, 2, 3, 4, 1, 0] }
  let(:l5) { [10, 5, 2, 3, 7, 5] }
  let(:l6) { [4, -2, 3, 3, 4] }
  let(:l7) { [0, 2, 0] }
  let(:l8) { [5, 9, 13, -3] }
  let(:l9) { [13, 3] + Array.new(2_000_000, 1) + [8, -3] }
  let(:l10) { [13, 3] + Array.new(1_000_000, 1) + [6,7] + Array.new(1_000_000, 1) + [8, -3] }
  let(:l11) { [13, 3, 1] + Array.new(1_000_000, 1) + [6,7] + Array.new(1_000_000, 1) + [8, -3] }

  it "Basic tests" do
    expect(sum_pairs(l1, 8)).to eq [1, 7]
    expect(sum_pairs(l2, -6)).to eq [0, -6]
    expect(sum_pairs(l3, -7)).to eq nil
    expect(sum_pairs(l4, 2)).to eq [1, 1]
    expect(sum_pairs(l5, 10)).to eq [3, 7]
    expect(sum_pairs(l6, 8)).to eq [4, 4]
    expect(sum_pairs(l7, 0)).to eq [0, 0]
    expect(sum_pairs(l8, 10)).to eq [13, -3]
    expect(sum_pairs(l9, 13)).to eq nil
    expect(sum_pairs(l10, 13)).to eq [6, 7]
    expect(sum_pairs(l11, 16)).to eq [13, 3]
  end
end