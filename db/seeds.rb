# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')


russianHill = Item.create(title: "Russian Hill",
	subtitle: "Terin", image_name: "russian_hill.png",
	price: "71.00", sku: "theCity", download_url: "https://s3-us-west-2.amazonaws.com/vividkick/russian_hill.png",
	description: "awesome shot", description: %{<p>The city</p>
	})