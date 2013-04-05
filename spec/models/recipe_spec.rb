require 'spec_helper'

describe Recipe do
  subject { Fabricate.build(:recipe) }

  it 'has valid factory' do
    expect(subject).to be_valid
  end

  it 'must have name' do
    subject.name = nil
    expect(subject).to_not be_valid  
  end

  it 'must have at least one step' do
    subject.steps = nil
    expect(subject).to_not be_valid
    subject.steps = []
    expect(subject).to_not be_valid
  end

  it 'must have at least one ingredient' do
    subject.ingredients = nil
    expect(subject).to_not be_valid
    subject.ingredients = []
    expect(subject).to_not be_valid
  end

  context 'with name "name with a space"' do
    subject { Fabricate(:recipe, name: 'name with a space') }
    its(:id) { should eql 'name-with-a-space' }
  end
end
