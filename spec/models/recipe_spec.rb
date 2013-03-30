require 'spec_helper'

describe Recipe do
  subject { FactoryGirl.build(:recipe) }

  it 'has valid factory' do
    expect(subject.valid?).to be_true
  end

  it 'must have name' do
    subject.name = nil
    expect(subject.valid?).to be_false
  end

  it 'must have at least one step' do
    subject.steps = nil
    expect(subject.valid?).to be_false
    subject.steps = []
    expect(subject.valid?).to be_false
  end
end
