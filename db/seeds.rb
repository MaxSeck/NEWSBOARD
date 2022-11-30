# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require 'faker'

puts "Cleaning database..."

User.destroy_all
Post.destroy_all

puts "Creating Users"

user1001 = User.new({ email: "markus@gmail.com", password: "password"})
user1001.save!
user3011 = User.new({ email: "max@gmail.com", password: "password"})
user3011.save!
user991 = User.new({ email: "damla@gmail.com", password: "password"})
user991.save!
user2589 = User.new({ email: "suzi@gmail.com", password: "password"})
user2589.save!
user2511 = User.new({ email: "mariam@gmail.com", password: "password"})
user2511.save!
user6386 = User.new({ email: "chris@gmail.com", password: "password"})
user6386.save!

puts "Creating posts..."

file = URI.open("https://res.cloudinary.com/dq0qyhr3b/image/upload/v1669729385/Newsboard/broken_mhhndo.png")
post1 = Post.new({ title: "Destroyed playground around Friesenplatz!", user: user1001, address: "Friesenpl., 50672 Köln", content: "I saw this during my morning jogging session after carnaval! I know there's a lot of reckless behaviour during 11/11 but this is crossing the line!" })
binding.pry
post1.photo.attach(io: file, filename: "photo.png", content_type: "image/png")
post1.save!

file = URI.open("https://res.cloudinary.com/dq0qyhr3b/image/upload/v1669729385/Newsboard/pigeonmeme_yq4srn.jpg")
post2 = Post.new({ title: "Military Pigeon spotted on Rudolfplatz!", user: user2511, address: "Rudolfpl., 50674 Köln", content: "I was walking past the Christmas market booths with my pals and suddenly we saw this fully armed bird landing down! It had a hemlet an a radio attached to his back. Anyone knows anything about possible military drills?" })
post2.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpg")
post2.save!

post3 = Post.new({ title: "Crazy Driver honking in the middle of the night at Rathenauer Platz!!!!", user: user6386, address: "Rathenaupl., 50674 Köln", content: "THERE IS A CRAZY MAN ON THE LOOSE!!!!!!!! Everynight at 3.33 am there is a red SMART with a white bus printed on it. The person drives like a maniac and wakes us up. We have a baby! He is so fast we cannot decipher the license plate. If you know him, please teill him to stop!!!"})
post3.save!
post4 = Post.new({ title: "Free Hugs at Kölner Dom", user: user6386, address: "Domplatte, 50667 Köln", content: "everybody needs a hug from time to time. You can get a hug right in front of the entry gate! #healtheworld"})
post4.save!
post5 = Post.new({ title: "Free monitors", user: user3011, address: "Friesenplatz, 50672 Köln", content: "I have about 30 spare computer screens that want to find a home. They are very big and just like new. I also have 20 spare bike tires. I will place them right in front of the empty building on the cinema site."})
post5.save!
post6 = Post.new({ title: "Stinky nights", user: user1001, address: "Friesenwall, 50672 Köln", content: "Does anybody know what the strong chemical smell is I smell every night?"})
post6.save!
post7 = Post.new({ title: "Neighbourhood cleanup party on Friday!", user: user2511, address: "Friesenstraße, 50672 Köln", content:"Let's do something good for our community while drinking in great company! BYOBBYOB, bring your own bin, bring your own bottle. Cheers!"})
post7.save!
post8 = Post.new({ title: "Help out the homeless :)", user: user6386, address: "Appellhofplatz, 50667 Köln", content: "Hey guys, there is a sweet old man living in the train station. He only speaks English and paperwork in Germany is difficult. Winter is already here and he needs a sleeping bag and a mat for his cute dog. Dog food, money and a warm smile also help :)" })
post8.save!
post9 = Post.new({ title: "Grand Opening of new cafe ☕️", user: user2508, address: "Ehrenstraße 25, Köln", content: "Tomorrow is the grand opening of a cafe that is run by seniors with their own non-profit. All proceeds go to senior who cannot with low pensions. Do good, eat good and enjoy the best cakes in town! :) "})
post9.save!
post10 = Post.new({ title: "Keys found 🔑", user: user2508, address: "Hohenzollernring 26, Köln", content: "I found a key with a bright pink zipper lanyard in front of REWE. I dropped it off at the city lost and found."})
post10.save!

puts "Creating comments..."
# for post no.1
comment1a = Comment.new({ content: "I tried to take my niece to play today and we couldn't! Actually pretty dangerous to let your children play there!", user: markus, post: post1})
comment1a.save!
comment1b = Comment.new({ content: "I will talk to my building's security guard. Our cameras are encapsulating the whole playground area, so I'm sure he must have seen something!", user: damla, post: post1})
comment1b.save!
# for post no.2
comment2a = Comment.new({ content: "That has been actually covered in the last Kolsh Times print. It is indeed, a new military tactics drill. ", user: max, post: post2})
comment2a.save!
comment2b = Comment.new({ content: "Me and my friends also saw this pigeon!", user: damla, post: post2})
comment2b.save!
