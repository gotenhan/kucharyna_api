require 'spec_helper'

describe Ingredient do
  subject { Fabricate.build(:ingredient) } 
  it 'has valid factory' do
    expect(subject).to be_valid
  end

  it 'validates presence of name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'validates presence of amount' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end

  it 'validates that amount is non-negative' do
    subject.amount = -1
    expect(subject).to_not be_valid
    subject.amount = 0
    expect(subject).to be_valid
    subject.amount = 1
    expect(subject).to be_valid
  end
end
