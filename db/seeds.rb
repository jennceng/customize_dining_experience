# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ben = Customer.create(first_name: 'Ben', last_name: 'Hefe')
phil = Customer.create(first_name: 'Phil', last_name: 'Coleson')
dennis = Customer.create(first_name: 'Dennis', last_name: 'Reynolds')
dee = Customer.create(first_name: 'Dee', last_name: 'Reynolds')
charlie = Customer.create(first_name: 'Charlie', last_name: 'Kelly')
mac = Customer.create(first_name: 'Mac', last_name: 'MacDonald')


miso = Ingredient.create(name: 'miso')
vanilla = Ingredient.create(name: 'vanilla')
chocolate = Ingredient.create(name: 'chocolate')
pheasant = Ingredient.create(name: 'pheasant')
milk_steak = Ingredient.create(name: 'milk steak')

preference2 = Preference.create(customer: ben, ingredient: miso, likes: false)
Preference.create(customer: ben, ingredient: vanilla, likes: true)
Preference.create(customer: ben, ingredient: chocolate, likes: true)
Preference.create(customer: ben, ingredient: pheasant, likes: true)
Preference.create(customer: ben, ingredient: milk_steak, likes: false)

preference1 = Preference.create(customer: phil, ingredient: miso, likes: true)
Preference.create(customer: phil, ingredient: chocolate, likes: true)
Preference.create(customer: phil, ingredient: pheasant, likes: true)

Preference.create(customer: dennis, ingredient: vanilla, likes: false)
Preference.create(customer: dennis, ingredient: chocolate, likes: true)
Preference.create(customer: dennis, ingredient: pheasant, likes: true)
Preference.create(customer: dennis, ingredient: milk_steak, likes: false)

Preference.create(customer: dee, ingredient: milk_steak, likes: false)
Preference.create(customer: dee, ingredient: chocolate, likes: true)

Preference.create(customer: charlie, ingredient: milk_steak, likes: true)
Preference.create(customer: charlie, ingredient: vanilla, likes: false)
Preference.create(customer: charlie, ingredient: pheasant, likes: false)
Preference.create(customer: charlie, ingredient: chocolate, likes: false)
Preference.create(customer: charlie, ingredient: miso, likes: false)

Preference.create(customer: mac, ingredient: milk_steak, likes: false)
