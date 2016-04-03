# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ben = Customer.create(first_name: 'Ben', last_name: 'Hefe')
phil = Customer.create(first_name: 'Phil', last_name: 'Coleson')

miso = Ingredient.create(name: 'miso')
vanilla = Ingredient.create(name: 'vanilla')
chocolate = Ingredient.create(name: 'chocolate')

preference1 = Preference.create(customer: phil, ingredient: miso, likes: true)
preference1 = Preference.create(customer: ben, ingredient: miso, likes: false)
