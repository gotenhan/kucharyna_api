# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Recipe.create(name: 'test recipe 1', steps: ['krook 1', 'krok 2'])
Recipe.create(name: 'test recipe 2', steps: ['krok 1', 'krook 2'], description: 'sample description')
