require 'rspec'
require './simple_number_sequence'

describe "Simple number sequence" do
  it "Basic tests" do    
    expect(missing("123567")).to eq 4
    expect(missing("899091939495")).to eq 92
    expect(missing("9899101102")).to eq 100
    expect(missing("599600601602")).to eq -1
    expect(missing("8990919395")).to eq -1
    expect(missing("998999100010011003")).to eq 1002
    expect(missing("99991000110002")).to eq 10000
    expect(missing("979899100101102")).to eq -1
    expect(missing("900001900002900004900005900006")).to eq 900003
  end
end