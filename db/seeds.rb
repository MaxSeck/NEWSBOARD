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

# User.destroy_all
# Post.destroy_all
puts "Creating Users"

markus = User.new({ email: "markus@gmail.com", password: "password"})
markus.save!
max = User.new({ email: "max@gmail.com", password: "password"})
max.save!
damla = User.new({ email: "damla@gmail.com", password: "password"})
damla.save!
suzi = User.new({ email: "suzi@gmail.com", password: "password"})
suzi.save!
mariam = User.new({ email: "mariam@gmail.com", password: "password"})
mariam.save!
chris = User.new({ email: "chris@gmail.com", password: "password"})
chris.save!




puts "Creating posts..."

file = URI.open("https://res.cloudinary.com/dq0qyhr3b/image/upload/v1669729385/Newsboard/broken_mhhndo.png")
post1 = Post.new({ title: "Destroyed playground around Friesenplatz!", user: markus, address: "Friesenpl., 50672 Köln", content: "I saw this during my morning jogging session after carnaval! I know there's a lot of reckless behaviour during 11/11 but this is crossing the line!" })
post1.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
post1.save!

file = URI.open("https://res.cloudinary.com/dq0qyhr3b/image/upload/v1669729385/Newsboard/pigeonmeme_yq4srn.jpg")
post2 = Post.new({ title: "Military Pigeon spotted on Rudolfplatz!", user: markus, address: "Rudolfpl., 50674 Köln", content: "I was walking past the Christmas market booths with my pals and suddenly we saw this fully armed bird landing down! It had a hemlet an a radio attached to his back. Anyone knows anything about possible military drills?" })
post2.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
post2.save!



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
