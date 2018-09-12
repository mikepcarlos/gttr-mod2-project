# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Outfit.destroy_all
Clothe.destroy_all

User.create(username: "mikeycuts48", password: "fluffyanimals", bio: "I really like fluffy animals dressed up in cute outfits", display_name: "Mike Carlos" )
User.create(username: "gg_gina", password: "um", bio: "I don't know what to put here", display_name: "Gina Lee" )
# User.create(username: "christopher_robin", password: "pooh", bio: "I'm a little boy who likes to wear dresses", display_name: "Chris Robin" )
# User.create(username: "red_power_ranger", password: "red", bio: "Kick Ass", display_name: "Mr. Red" )

Outfit.create(name: "Summer Chic", date: DateTime.now.to_date)
Outfit.create(name: "Summer Nights", date: DateTime.now.to_date)
Outfit.create(name: "Power Suit", date: DateTime.now.to_date)
Outfit.create(name: "Boy's Get Up", date: DateTime.now.to_date)

Clothe.create(name: "V-Neck" , category: "Shirt", color: "Red")
Clothe.create(name: "Little Black Dress" , category: "Dress", color: "Black")
Clothe.create(name: "Latex Suit" , category: "Misc", color: "Red")
Clothe.create(name: "Boy's Dress" , category: "Dress", color: "Blue")
Clothe.create(name: "Leather Gloves" , category: "Accessory", color: "Red")
Clothe.create(name: "Heels" , category: "Footwear", color: "Yellow")
Clothe.create(name: "Sun Hat" , category: "Accessory", color: "Orange")
Clothe.create(name: "Joggers" , category: "Pant", color: "Green")
Clothe.create(name: "Button-Down" , category: "Shirt", color: "White")
Clothe.create(name: "Converse" , category: "Footwear", color: "White")

UserClothe.create(user_id: 2, clothe_id: 2)
UserClothe.create(user_id: 1, clothe_id: 4)
UserClothe.create(user_id: 1, clothe_id: 5)
UserClothe.create(user_id: 2, clothe_id: 8)
UserClothe.create(user_id: 2, clothe_id: 10)
UserClothe.create(user_id: 1, clothe_id: 10)

UserClotheOutfit.create(user_clothe_id: 1, outfit_id: 1)
UserClotheOutfit.create(user_clothe_id: 2, outfit_id: 2)
UserClotheOutfit.create(user_clothe_id: 3, outfit_id: 2)
UserClotheOutfit.create(user_clothe_id: 4, outfit_id: 1)
