# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
Post.destroy_all
User.destroy_all
Comment.destroy_all
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

user1001 = User.new({ email: "user1001@gmail.com", password: "password"})
user1001.save!
user3011 = User.new({ email: "user3011@gmail.com", password: "password"})
user3011.save!
user991 = User.new({ email: "user991@gmail.com", password: "password"})
user991.save!
user2508 = User.new({ email: "user2508@gmail.com", password: "password"})
user2508.save!
user2589 = User.new({ email: "user2589@gmail.com", password: "password"})
user2589.save!
user2511 = User.new({ email: "user2511@gmail.com", password: "password"})
user2511.save!
user6386 = User.new({ email: "user6386@gmail.com", password: "password"})
user6386.save!
user663 = User.new({ email: "user663@gmail.com", password: "password"})
user663.save!
user2051 = User.new({ email: "user2051@gmail.com", password: "password"})
user2051.save!
user499 = User.new({ email: "user499@gmail.com", password: "password"})
user499.save!
user3125 = User.new({ email: "user3125@gmail.com", password: "password"})
user3125.save!
user33 = User.new({ email: "user33@gmail.com", password: "password"})
user33.save!
user112 = User.new({ email: "user112@gmail.com", password: "password"})
user112.save!
user678 = User.new({ email: "user678@gmail.com", password: "password"})
user678.save!
user222 = User.new({ email: "user222@gmail.com", password: "password"})
user222.save!

puts "Creating posts..."

file = URI.open("https://res.cloudinary.com/dq0qyhr3b/image/upload/v1669729385/Newsboard/broken_mhhndo.png")
post1 = Post.new({ title: "Destroyed playground around Friesenplatz!", user: user1001, address: "Friesenpl., 50672 Köln", content: "I saw this during my morning jogging session after carnaval! I know there's a lot of reckless behaviour during 11/11 but this is crossing the line!" })
post1.photo.attach(io: file, filename: "photo.png", content_type: "image/png")
post1.save!

file = URI.open("https://res.cloudinary.com/dq0qyhr3b/image/upload/v1669729385/Newsboard/pigeonmeme_yq4srn.jpg")
post2 = Post.new({ title: "Military Pigeon spotted on Rudolfplatz!", user: user2511, address: "Rudolfpl., 50674 Köln", content: "I was walking past the Christmas market booths with my pals and suddenly we saw this fully armed bird landing down! It had a hemlet an a radio attached to his back. Anyone knows anything about possible military drills?" })
post2.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpg")
post2.save!
file = URI.open("https://assets.smart.mercedes-benz.com/styles/smart_large/s3/2020-01/smart-EQ-models-pulse_0.jpg?VersionId=TgXCKKi6xyOSsp9RTdidILgD8DP4rU11&h=9b8bd6ff&width=2720")
post3 = Post.new({ title: "Crazy Driver honking in the middle of the night at Rathenauer Platz!!!!", user: user6386, address: "Rathenaupl., 50674 Köln", content: "THERE IS A CRAZY MAN ON THE LOOSE!!!!!!!! Everynight at 3.33 am there is a red SMART with a white bus printed on it. The person drives like a maniac and wakes us up with their stupid honking. We have a baby! He is so fast we cannot decipher the license plate. If you know him, please teill him to stop!!!"})
post3.photo.attach(io: file, filename:"photo.png", content_type: "image/png")
post3.save!
post4 = Post.new({ title: "Free Hugs at Kölner Dom", user: user6386, address: "Domplatte, 50667 Köln", content: "everybody needs a hug from time to time. You can get a hug right in front of the entry gate! #healtheworld"})
post4.save!
post5 = Post.new({ title: "Free monitors", user: user3011, address: "Friesenplatz, 50672 Köln", content: "I have about 30 spare computer screens that want to find a home. They are very big and just like new. I also have 20 spare bike tires. I will place them right in front of the empty building on the cinema site."})
post5.save!
post6 = Post.new({ title: "Stinky nights", user: user1001, address: "Friesenwall, 50672 Köln", content: "Does anybody know what the strong chemical smell is I smell every night?"})
post6.save!
post7 = Post.new({ title: "Neighbourhood cleanup party on Friday!", user: user2511, address: "Friesenstraße, 50672 Köln", content:"Let's do something good for our community while drinking in great company! BYOBBYOB, bring your own bin, bring your own bottle. Cheers!"})
post7.save!
file = URI.open("https://res.cloudinary.com/dq0qyhr3b/image/upload/v1669815002/Newsboard/IMG_20170902_231044_wvfc4s.jpg")
post8 = Post.new({ title: "Help out the homeless :)", user: user6386, address: "Appellhofplatz, 50667 Köln", content: "Hey guys, there is a sweet old man living in the train station. He only speaks English and paperwork in Germany is difficult. Winter is already here and he needs a sleeping bag and a mat for his cute dog. Dog food, money and a warm smile also help :)" })
post8.photo.attach(io: file, filename:"photo.pgn", content_type: "image.png")
post8.save!
file = URI.open("https://res.cloudinary.com/dq0qyhr3b/image/upload/v1669815002/Newsboard/Grannie_s_Coffee_zvzcqo.png")
post9 = Post.new({ title: "Grand Opening of new cafe ☕️", user: user2589, address: "Ehrenstraße 25, Köln", content: "Tomorrow is the grand opening of a cafe that is run by seniors with their own non-profit. All proceeds go to senior who cannot with low pensions. Do good, eat good and enjoy the best cakes in town! :) "})
post9.save!
post10 = Post.new({ title: "Keys found 🔑", user: user2589, address: "Hohenzollernring 26, Köln", content: "I found a key with a bright pink zipper lanyard in front of REWE. I dropped it off at the city lost and found."})
post10.save!

puts "Creating comments..."
# for post no.1
comment1a = Comment.new({ content: "I tried to take my niece to play today and we couldn't! Actually pretty dangerous to let your children play there!", user: user1001, post: post1})
comment1a.save!
comment1b = Comment.new({ content: "I will talk to my building's security guard. Our cameras are encapsulating the whole playground area, so I'm sure he must have seen something!", user: user2508, post: post1})
comment1b.save!
# for post no.2
comment2a = Comment.new({ content: "That has actually been covered in the last Kölsch Times print. It is indeed, a new military tactics drill. 💉", user: user3011, post: post2})
comment2a.save!
comment2b = Comment.new({ content: "Me and my friends also saw this pigeon!", user: user6386, post: post2})
comment2b.save!
comment2c = Comment.new({ content: "That pigeon saved my life! I was on the way to a date with this guy but the pigeon shat on my head so I had to go home to wash my hair and cancel the date. Turns out the guy was a serial killer! 🙀", user: user2511, post: post2})
comment2c.save!
comment2d = Comment.new({ content: "You probably saw Lieutenant Kurt Feathers! Everybody knows him.", user: user2511, post: post2})
comment2d.save!
# for post no.3
comment3a = Comment.new({ content: "I agree!! This has to stop! 🎀 I need my beauty sleep!", user: user663, post: post3})
comment3a.save!
comment3b = Comment.new({ content: "That car blocked my parking garage yesterday. Typical smart driver! I took pictures and reported to the police 👮🏽‍♂️", user: user1001, post: post3})
comment3b.save!
comment3c = Comment.new({ content: "My mother saw the driver throw trash out of the window. Everybody should keep an eye open for the lisence plate. We need to stop the madness!!!!!!!!!!!", user: user2511, post: post3})
comment3c.save!
comment3d = Comment.new({ content: "Such a boomer move! 🧟 What a loser! Who still throw outs trash??!?! #the60sareover #savetheplanet #thereisnoplanetb", user: user3125, post: post3})
comment3d.save!
comment3e = Comment.new({ content: "🙅🏼‍♂️ Let's not start a witch hunt here. The key is to educate this person. We don't know what they have going on their life. Don't be so quick to judge. Maybe the honking is a cry for help", user: user499, post: post3})
comment3e.save!
# for post no.4
comment4a = Comment.new({ content: "Kölle ❤️ #liebedeinestadt", user: user2511, post: post4})
comment4a.save!
comment4b = Comment.new({ content: "Pandemic anyone?!", user: user991, post: post4})
comment4b.save!
comment4c = Comment.new({ content: "Free kisses as well? 😘", user: user2051, post: post4})
comment4c.save!
comment4d = Comment.new({ content: "I only give hugs! 😂", user: user6386, post: post4})
comment4d.save!
# for post no.5
comment5a = Comment.new({ content: "I want a Samsung Curved, preferably white. Do you have one?", user: user2051, post: post5})
comment5a.save!
comment5b = Comment.new({ content: "What about the cables? Do the monitors come with or without cables?", user: user663, post: post5})
comment5b.save!
comment5c = Comment.new({ content: "Some have cables, some don't", user: user3011, post: post5})
comment5c.save!
comment5d = Comment.new({ content: "I will come pick them up ASAP!", user: user991, post: post5})
comment5d.save!
comment5e = Comment.new({ content: "🍆🍆🍆", user: user499, post: post5})
comment5e.save!
comment5f = Comment.new({ content: "🍆", user: user499, post: post5})
comment5f.save!
comment5g = Comment.new({ content: "Are they good enough to play CS?", user: user678, post: post5})
comment5g.save!
comment5h = Comment.new({ content: "Can I still find the tires?", user: user33, post: post5})
comment5h.save!
comment5i = Comment.new({ content: "Thank you for the monitor. Mine broke and this really helped a poor student out. Thank you #seethegood", user: user112, post: post5})
comment5i.save!
comment5i = Comment.new({ content: "Everything has been picked up. I will archive this post", user: user3011, post: post5})
comment5i.save!
#for post no.6
comment6a = Comment.new({ content: "agree!!! That smell is horrifble!", user: user3011, post: post6})
comment6a.save!
comment6b = Comment.new({ content: "The government is trying to poison us. I read that on Telegram!", user: user112, post: post6})
comment6b.save!
comment6c = Comment.new({ content: "If you smell it, it's too late!", user: user678, post: post6})
comment6c.save!
comment6d = Comment.new({ content: "😂😂😂😂 It's yo mama", user: user499, post: post6})
comment6d.save!
comment6e = Comment.new({ content: "My wife's cooking 😂😂😂😂😂😂😂😂😂😂😂😂", user: user678, post: post6})
comment6e.save!
# for post no. 7
comment7a = Comment.new({ content: "What a cool idea! I won't be able to make it on Friday but I will donate trash bags! I will ask my neighbours if they join and then give them the bags", user: user2508, post: post7})
comment7a.save!
comment7b = Comment.new({ content: "Another sheep 🐑 The government is on to us!", user: user112, post: post7})
comment7b.save!
comment7c = Comment.new({ content: "Have you gotten a permit to organize this?", user: user499, post: post7})
comment7c.save!
comment7d = Comment.new({ content: "Hey guys, I became a millionaire within one week just by manifesting my dream life. Follow bitly.com/pyramid_scheme for more info. ❌ don't miss out on this!!!!!!!! ❌", user: user499, post: post7})
comment7d.save!
comment7e = Comment.new({ content: "Great, I wil bring my boombox! #retro", user: user33, post: post7})
comment7e.save!
comment7a = Comment.new({ content: "How fun!", user: user663, post: post7})
comment7a.save!
comment7b = Comment.new({ content: "NO! I pay taxes, I should not be forced to clean up the streets. Enough is enough. I have a job. one job is enough!!!!", user: user1001, post: post7})
comment7b.save!
comment7c = Comment.new({ content: "@user499 @user112 No Karens allowed. Stay home.", user: user678, post: post7})
comment7c.save!
comment7d = Comment.new({ content: "My husband is a police officer! He will put you in jail I am not a KAren!!!!!111!!!1", user: user112, post: post7})
comment7d.save!
comment7e = Comment.new({ content: "I am just curious, you know how it is in Germany with the permits and stuff. Not a Karen, just out on probation. I cannot be caught participating in an illegal event", user: user678, post: post7})
comment7e.save!
comment7e = Comment.new({ content: "Hey, just a quick update. I spoke to my landlord, she will sponsor 20 boxes of latex gloves :) She was so happy we are doing this.", user: user678, post: post7})
comment7e.save!
comment7e = Comment.new({ content: "Duh! The property value goes up if the neighbourhood is clean! Don't give the rich more money! The rich are bribing the government. They make the rules! Everybody revolt!.", user: user112, post: post7})
comment7e.save!
# for post no.8
comment8a = Comment.new({ content: "That man has the best advice. I once spoke to him when I was really down and he cheered me up. I will make sure to tell my friends who get on the train there to bring him a warm meal", user: user2508, post: post8})
comment8a.save!
comment8b = Comment.new({ content: "He is so famous for just being awesome. I think we should all collect money to help him get back in his feet!", user: user3011, post: post8})
comment8b.save!
comment8c = Comment.new({ content: "His name is Buddha and his dog's name is Gandhi 🧡", user: user499, post: post8})
comment8c.save!
comment8d = Comment.new({ content: "Hey guys, I became a millionaire within one week just by manifesting my dream life. Follow bitly.com/pyramid_scheme for more info. ❌ don't miss out on this!!!!!!!! ❌", user: user499, post: post8})
comment8d.save!
comment8e = Comment.new({ content: "I have a sleeping bag I don't need anymore because I stoped sleeping outside.", user: user33, post: post8})
comment8e.save!
comment8f = Comment.new({ content: "Ny dog doesn't like his toys, I will bring them to the station 🥳", user: user663, post: post8})
comment8f.save!
comment8g = Comment.new({ content: "My nana made so much food, I will bring him some.", user: user1001, post: post8})
comment8g.save!
comment8h = Comment.new({ content: "Does anybody know a vet who would want to do pro-bono work?", user: user6386, post: post8})
comment8h.save!
comment8i = Comment.new({ content: "I work for the homeless shelter, my coworker and I will stop by the station and talk to him", user: user112, post: post8})
comment8i.save!
comment8j = Comment.new({ content: "My friend heard him sing once and said he has the voice of an angel 😇", user: user678, post: post8})
comment8j.save!
comment8k = Comment.new({ content: "Do we know his jacket size? 🧐 I would like to buy him a new jacket.", user: user2508, post: post8})
comment8k.save!
comment8l = Comment.new({ content: "Duh! The property value goes up if the neighbourhood is clean! Don't give the rich more money! The rich are bribing the government. They make the rules! Everybody revolt!.", user: user112, post: post8})
comment8l.save!
comment8m = Comment.new({ content: "Hey guys, I became a millionaire within one week just by manifesting my dream life. Follow bitly.com/pyramid_scheme for more info. ❌ don't miss out on this!!!!!!!! ❌", user: user499, post: post8})
comment8m.save!
comment8n = Comment.new({ content: "Hey guys, I became a millionaire within one week just by manifesting my dream life. Follow bitly.com/pyramid_scheme for more info. ❌ don't miss out on this!!!!!!!! ❌", user: user499, post: post8})
comment8n.save!
comment8o = Comment.new({ content: "What about other homeless people?", user: user33, post: post8})
comment8o.save!
# for post no.9
comment9a = Comment.new({ content: "The gov is at it again! tHeY aRe LyInG & sPyInG oN uS!! 😱🫣 DONT BE SHEEPS 🫵 NGO = NEXT GOVERNMENT OPERATION!!!!! ", user: user499, post: post9})
comment9a.save!
comment9b = Comment.new({ content: "Stuffing my face with cake while doing something good in great company?! Count me in!!!!", user: user112, post: post9})
comment9b.save!
comment9c = Comment.new({ content: "Rumor has it that DJ Bobo will perform at the opening because he knows one of the grandmas.", user: user678, post: post9})
comment9c.save!
comment9d = Comment.new({ content: "DJ Bobo? 👀", user: user6386, post: post9})
comment9d.save!
comment9e = Comment.new({ content: "I cannot go. I am allergic to gluten, sugar and electricity.", user: user1001, post: post9})
comment9e.save!
comment9f = Comment.new({ content: "We don't want Hipster Stuff in our neighbourhood! Get out!!!!!!!!", user: user33, post: post9})
comment9f.save!
comment9g = Comment.new({ content: "My friend's nan will be baking Schwarzwälder Kirsch for them. I guarantee it is the BEST SCHWARZWÄLDER KIRSCH IN THE WORLDDDDD!!!!!!", user: user33, post: post9})
comment9g.save!
comment9h = Comment.new({ content: "Is it dog friendly?", user: user33, post: post9})
comment9h.save!
# for no.10
comment10a = Comment.new({ content: "Thank you! I picked them up today 👩🏼‍💻", user: user991, post: post10})
comment10a.save!
