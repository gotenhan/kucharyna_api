# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :recipe do
    name 'valid_name'
    steps ['step1', 'step2']
  end
end
