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

one = Clothe.create(name: "V-Neck" , category: "Shirts", color: "Red")
two = Clothe.create(name: "Little Black Dress" , category: "Dress", color: "Black")
three = Clothe.create(name: "Superhero" , category: "Latex Suit", color: "Red")
four = Clothe.create(name: "Boy's Dress" , category: "Dress", color: "Blue")
five = Clothe.create(name: "Leather Gloves" , category: "Accessories", color: "Red")
six = Clothe.create(name: "Heels" , category: "Footwear", color: "Yellow")
seven = Clothe.create(name: "Sun Hat" , category: "Accessories", color: "Orange")
eight = Clothe.create(name: "Joggers" , category: "Pants", color: "Green")
nine = Clothe.create(name: "Button-Down" , category: "Shirts", color: "White")
ten = Clothe.create(name: "Converse" , category: "Footwear", color: "White")

user_1 = User.create(username: "mikeycuts48", password: "fluffyanimals", bio: "I really like fluffy animals dressed up in cute outfits", display_name: "Mike Carlos")
user_2 = User.create(username: "gg_gina", password: "um", bio: "I don't know what to put here", display_name: "Gina Lee")
user_3 = User.create(username: "christopher_robin", password: "pooh", bio: "I'm a little boy who likes to wear dresses", display_name: "Chris Robin")
user_4 = User.create(username: "red_power_ranger", password: "red", bio: "Kick Ass", display_name: "Mr. Red")

Outfit.create(name: "Summer Chic", user: user_1, clothes:[seven, ten])
Outfit.create(name: "Summer Nights", user: user_2, clothes:[one, ten])
Outfit.create(name: "Power Suit", user: user_3, clothes:[three])
Outfit.create(name: "Boy's Get Up", user: user_4, clothes:[four])

# ClotheOutfit.create(clothe_id: 7, outfit_id: 1)
# ClotheOutfit.create(clothe_id: 10, outfit_id: 1)
# ClotheOutfit.create(clothe_id: 1, outfit_id: 2)
# ClotheOutfit.create(clothe_id: 10, outfit_id: 2)
# ClotheOutfit.create(clothe_id: 3, outfit_id: 3)
# ClotheOutfit.create(clothe_id: 5, outfit_id: 3)
# ClotheOutfit.create(clothe_id: 4, outfit_id: 4)
# ClotheOutfit.create(clothe_id: 9, outfit_id: 4)
#
UserClothe.create(user_id: 2, clothe_id: 2)
UserClothe.create(user_id: 1, clothe_id: 4)
UserClothe.create(user_id: 1, clothe_id: 5)
UserClothe.create(user_id: 3, clothe_id: 8)
UserClothe.create(user_id: 2, clothe_id: 10)
UserClothe.create(user_id: 4, clothe_id: 10)
