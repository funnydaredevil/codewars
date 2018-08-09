require 'rspec'
require './consequtive_production_fibonacci'

describe "Fibonacci production" do
  it "Basic tests" do
    expect(productFib(4895)).to eq [55, 89, true]
    expect(productFib(5895)).to eq [89, 144, false]
  end
end

