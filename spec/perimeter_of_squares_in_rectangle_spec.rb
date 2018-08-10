require 'rspec'
require './perimeter_of_squares_in_rectangle'

describe "perimeter of squares in rectangle" do
  it "Basic tests" do
    expect(perimeter(5)).to eq 80
    expect(perimeter(7)).to eq 216
    expect(perimeter(20)).to eq 114624
    expect(perimeter(30)).to eq 14098308
    expect(perimeter(100)).to eq 6002082144827584333104
  end
end

