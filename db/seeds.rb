# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "mikeycuts48", password: "fluffyanimals", bio: "I really like fluffy animals dressed up in cute outfits", display_name: "Mike Carlos" )
User.create(username: "gg_gina", password: "um", bio: "I don't know what to put here", display_name: "Gina Lee" )

Outfit.create(name: "Summer Chic", date: DateTime.now.to_date)
Outfit.create(name: "Summer Nights", date: DateTime.now.to_date)

Clothe.create(category: "Shirt", user_id: 1, outfit_id: 2)
Clothe.create(category: "Dress", user_id: 2, outfit_id: 1)
