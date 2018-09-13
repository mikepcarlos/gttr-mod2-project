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

############# SHIRTS ###############
Clothe.create(name:"Army Green Shirt", category:"Shirt", url:"shirts/army-green-shirt.jpg")
Clothe.create(name:"blue-plaid", category:"Shirt", url:"shirts/blue-plaid.jpg")
Clothe.create(name:"Latex Suit", category:"Shirt", url:"shirts/checkered-shirt.jpeg")
Clothe.create(name:"Boy's Dress", category:"Shirt", url:"shirts/fitted-blue-button-up.jpg")
Clothe.create(name:"Leather Gloves", category:"Shirt", url:"shirts/fitted-pink-button-up.jpg")
Clothe.create(name:"Heels", category:"Shirt", url:"shirts/fitted-white-button-up.jpg")
Clothe.create(name:"Sun Hat", category:"Shirt", url:"shirts/gucci-rose-hoodie.jpeg")
Clothe.create(name:"Joggers", category:"Shirt", url:"shirts/gucci-stranger-things-hoodie.png")
Clothe.create(name:"Button-Down", category:"Shirt", url:"shirts/long-baseball-tee.png")
Clothe.create(name:"Converse", category:"Shirt", url:"shirts/octocat-shirt.png")
Clothe.create(name:"Converse", category:"Shirt", url:"shirts/orange-hoodie.jpg")
Clothe.create(name:"Converse", category:"Shirt", url:"shirts/pug-life-shirt.jpg")
Clothe.create(name:"Converse", category:"Shirt", url:"shirts/pug-shirt.jpg")
Clothe.create(name:"Converse", category:"Shirt", url:"shirts/pugtato-shirt.jpg")
Clothe.create(name:"Converse", category:"Shirt", url:"shirts/the-office-aqua-blue-shirt.png")

############# PANTS ###############
Clothe.create(name:"Converse", category:"Pants", url:"pants/black-shorts.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/black-skirt-belt.jpeg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/black-skirt.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/blue-green-plaid-skirt.jpeg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/brick-pants.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/dripping-space-sweatpants.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/grey-sweatshorts.png")
Clothe.create(name:"Converse", category:"Pants", url:"pants/grey-straight-pant.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/grey-sweatpants.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/grey-sweatshorts.png")
Clothe.create(name:"Converse", category:"Pants", url:"pants/hundred-sweatpants.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/khaki-cuff-joggers.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/light-blue-jeans.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/light-pink-shorts.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/long-red-skirt.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/mens-leggings.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/navy-blue-ruffle-skirt.jpeg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/navy-blue-skirt.jpeg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/neon-blue-shorts.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/olive-green-pant.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/olive-khaki-pants.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/powered-by-plants-sweatpants.png")
Clothe.create(name:"Converse", category:"Pants", url:"pants/red-spiral-long-skirt.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/rooster-sweatpants.png")
Clothe.create(name:"Converse", category:"Pants", url:"pants/sky-blue-sweatshorts.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/tan-skirt.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/wheat-pants.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/womens-dark-jean-shorts.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/womens-grey-leggings.jpg")
Clothe.create(name:"Converse", category:"Pants", url:"pants/yellow-plaid-skirt.png")

############# PANTS ###############
Clothe.create(name:"Converse", category:"Footwear", url:"footwear/black-dress-shoes.jpg")
Clothe.create(name:"Converse", category:"Footwear", url:"footwear/black-heels.jpg")
Clothe.create(name:"Converse", category:"Footwear", url:"footwear/black-open-heels.jpg")
Clothe.create(name:"Converse", category:"Footwear", url:"footwear/black-suede-shoes.jpg")
Clothe.create(name:"Converse", category:"Footwear", url:"footwear/blue-green-converse.jpg")
Clothe.create(name:"Converse", category:"Footwear", url:"footwear/blue-puma.jpg")
Clothe.create(name:"Converse", category:"Footwear", url:"footwear/brown-dress-shoes.jpg")
Clothe.create(name:"Converse", category:"Footwear", url:"footwear/brown-shoes.jpg")
Clothe.create(name:"Converse", category:"Footwear", url:"footwear/doc-marten-shoes.jpg")
Clothe.create(name:"Converse", category:"Footwear", url:"footwear/doc-martens-boots.png")
Clothe.create(name:"Converse", category:"Footwear", url:"footwear/doc-martens-flower-boots.jpeg")
Clothe.create(name:"Converse", category:"Footwear", url:"footwear/doc-martens-long-boots.jpg")
Clothe.create(name:"Converse", category:"Footwear", url:"footwear/jordan-heels.jpg")
Clothe.create(name:"Converse", category:"Footwear", url:"footwear/nike-sneakers.jpg")
Clothe.create(name:"Converse", category:"Footwear", url:"footwear/red-converse.jpg")
Clothe.create(name:"Converse", category:"Footwear", url:"footwear/white-blue-black-sneakers.jpg")
Clothe.create(name:"Converse", category:"Footwear", url:"footwear/adidas-black-stripe.jpg")
Clothe.create(name:"Converse", category:"Footwear", url:"footwear/teal-sneakers.jpg")
Clothe.create(name:"Converse", category:"Footwear", url:"footwear/sandals.png")


UserClothe.create(user_id: 2, clothe_id: 2)
UserClothe.create(user_id: 1, clothe_id: 4)
UserClothe.create(user_id: 1, clothe_id: 5)
UserClothe.create(user_id: 2, clothe_id: 8)
UserClothe.create(user_id: 2, clothe_id: 10)
UserClothe.create(user_id: 1, clothe_id: 10)

ClotheOutfit.create(clothe_id: 1, outfit_id: 1)
ClotheOutfit.create(clothe_id: 2, outfit_id: 2)
ClotheOutfit.create(clothe_id: 3, outfit_id: 2)
ClotheOutfit.create(clothe_id: 4, outfit_id: 1)
