Fabricator(:recipe) do
  name 'valid_name'
  steps ['step1', 'step2']
  ingredients(count: 3) { |attrs, i| Fabricate.build(:ingredient, name: "ingredient #{i}") }
end
