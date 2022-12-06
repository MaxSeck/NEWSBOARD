# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Comment.destroy_all
Vote.destroy_all
Bookmark.destroy_all
Post.destroy_all
User.destroy_all


# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require 'faker'

puts "Cleaning database..."

puts "Creating Users"

user1001 = User.new({ email: "user1001@gmail.com", password: "password", username: "user1001"})
user1001.save!
user3011 = User.new({ email: "user3011@gmail.com", password: "password", username: "user3011"})
user3011.save!
user991 = User.new({ email: "user991@gmail.com", password: "password", username: "user991"})
user991.save!
user2508 = User.new({ email: "user2508@gmail.com", password: "password", username: "user2508"})
user2508.save!
user2589 = User.new({ email: "user2589@gmail.com", password: "password", username: "user2589"})
user2589.save!
user2511 = User.new({ email: "user2511@gmail.com", password: "password", username: "user2511"})
user2511.save!
user6386 = User.new({ email: "user6386@gmail.com", password: "password", username: "user6386"})
user6386.save!
user663 = User.new({ email: "user663@gmail.com", password: "password", username: "user663"})
user663.save!
user2051 = User.new({ email: "user2051@gmail.com", password: "password", username: "user2051"})
user2051.save!
user499 = User.new({ email: "user499@gmail.com", password: "password", username: "user499"})
user499.save!
user3125 = User.new({ email: "user3125@gmail.com", password: "password", username: "user3125"})
user3125.save!
user33 = User.new({ email: "user33@gmail.com", password: "password", username: "user33"})
user33.save!
user112 = User.new({ email: "user112@gmail.com", password: "password", username: "user112"})
user112.save!
user678 = User.new({ email: "user678@gmail.com", password: "password", username: "user678"})
user678.save!
user222 = User.new({ email: "user222@gmail.com", password: "password", username: "user222"})
user222.save!
user223 = User.new({ email: "user223@gmail.com", password: "password", username: "user223"})
user223.save!
user30301 = User.new({ email: "user30301@gmail.com", password: "password", username: "user30301"})
user30301.save!
user59343 = User.new({ email: "user59343@gmail.com", password: "password", username: "user59343"})
user59343.save!
user59344 = User.new({ email: "user59344@gmail.com", password: "password", username: "user59344"})
user59344.save!
user59345 = User.new({ email: "user59345@gmail.com", password: "password", username: "user59345"})
user59345.save!
user59446 = User.new({ email: "user59446@gmail.com", password: "password", username: "user59446"})
user59446.save!
user60696 = User.new({ email: "user60696@gmail.com", password: "password", username: "user60696"})
user60696.save!
user31234 = User.new({ email: "user31234@gmail.com", password: "password", username: "user31234"})
user31234.save!
user59366 = User.new({ email: "user59366@gmail.com", password: "password", username: "user59366"})
user59366.save!
user23444 = User.new({ email: "user23444@gmail.com", password: "password", username: "user23444"})
user23444.save!
user31111 = User.new({ email: "user31111@gmail.com", password: "password", username: "user31111"})
user31111.save!
user98765 = User.new({ email: "user98765@gmail.com", password: "password", username: "user98765"})
user98765.save!
user53450 = User.new({ email: "user53450@gmail.com", password: "password", username: "user53450"})
user53450.save!
user44226 = User.new({ email: "user44226@gmail.com", password: "password", username: "user44226"})
user44226.save!
user30009 = User.new({ email: "user30009@gmail.com", password: "password", username: "user30009"})
user30009.save!
user19456 = User.new({ email: "user19456@gmail.com", password: "password", username: "user19456"})
user19456.save!
user15233 = User.new({ email: "user15233@gmail.com", password: "password", username: "user15233"})
user15233.save!
user23222 = User.new({ email: "user23222@gmail.com", password: "password", username: "user23222"})
user23222.save!
user32777 = User.new({ email: "user32777@gmail.com", password: "password", username: "user32777"})
user32777.save!
user99003 = User.new({ email: "user99003@gmail.com", password: "password", username: "user99003"})
user99003.save!
user29111 = User.new({ email: "user29111@gmail.com", password: "password", username: "user29111"})
user29111.save!
user66213 = User.new({ email: "user66213@gmail.com", password: "password", username: "user66213"})
user66213.save!
user66255 = User.new({ email: "user66255@gmail.com", password: "password", username: "user66255"})
user66255.save!
user66222 = User.new({ email: "user66222@gmail.com", password: "password", username: "user66222"})
user66222.save!
user32733 = User.new({ email: "user32733@gmail.com", password: "password", username: "user32733"})
user32733.save!
user65440 = User.new({ email: "user65440@gmail.com", password: "password", username: "user65440"})
user65440.save!
user63333 = User.new({ email: "user63333@gmail.com", password: "password", username: "user63333"})
user63333.save!



puts "Creating posts..."

file = URI.open("https://res.cloudinary.com/dq0qyhr3b/image/upload/v1669729385/Newsboard/broken_mhhndo.png")
post1 = Post.new({ title: "Destroyed playground around Friesenplatz!", user: user1001, address: "Friesenpl., 50672 Köln", content: "I saw this during my morning jogging session after carnaval! I know there's a lot of reckless behaviour during 11/11 but this is crossing the line!" })
post1.photo.attach(io: file, filename: "photo.png", content_type: "image/png")
post1.save!

file = URI.open("https://res.cloudinary.com/dq0qyhr3b/image/upload/v1669729385/Newsboard/pigeonmeme_yq4srn.jpg")
post2 = Post.new({ title: "Military Pigeon spotted on Rudolfplatz!", user: user2511, address: "Rudolfpl., 50674 Köln", content: "I was walking past the Christmas market booths with my pals and suddenly we saw this fully armed bird landing down! It had a hemlet an a radio attached to his back. Anyone knows anything about possible military drills?" })
post2.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpg")
post2.save!
file = URI.open("https://res.cloudinary.com/dq0qyhr3b/image/upload/v1669815002/Newsboard/Grannie_s_Coffee_1_iogfnd.png")
post3 = Post.new({ title: "Crazy Driver honking in the middle of the night at Rathenauer Platz!!!!", user: user6386, address: "Rathenaupl., 50674 Köln", content: "THERE IS A CRAZY MAN ON THE LOOSE!!!!!!!! Everynight at 3.33 am there is a red SMART with a white bus printed on it. The person drives like a maniac and wakes us up with their stupid honking. We have a baby! He is so fast we cannot decipher the license plate. If you know him, please tell him to stop!!!"})
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
post9 = Post.new({ title: "Grand Opening of new cafe ☕️", user: user2589, address: "Ehrenstraße 25, Köln", content: "Tomorrow is the grand opening of a cafe that is run by seniors with their own non-profit. All proceeds go to seniors who cannot with low pensions. Do good, eat good and enjoy the best cakes in town! :) "})
post9.photo.attach(io: file, filename:"photo.pgn", content_type: "image.png")
post9.save!
post10 = Post.new({ title: "Keys found 🔑", user: user2589, address: "Hohenzollernring 26, Köln", content: "I found a key with a bright pink zipper lanyard in front of REWE. I dropped it off at the city lost and found."})
post10.save!
post11 = Post.new({ title: "Movie Review?", user: user223, address: "7 de Julio, 15390 Ciudad de México, CDMX", content: "Has anybody seen the new Super Mario Movie?"})
post11.save!
post12 = Post.new({ title: "Visitor from Cologne, Germany", user: user33, address: "Blvd. Miguel de Cervantes Saavedra, Granada, Miguel Hidalgo, 11529 Ciudad de México, CDMX, Mexiko", content: "Hello, I am on a one week business trip hoping to see a bit of Mexico City. Do you guys have any recommendations? What are the must-sees, trendy areas and best restaurants in town?"})
post12.save!
post13 = Post.new({ title: "Free walking tours", user: user23222, address: "Berlín 268, Del Carmen, Coyoacán, 04100 Ciudad de México, CDMX, Mexiko", content: "We meet in front of Hostal Cuija Coyoacan at 10 am."})
post13.save!
post14 = Post.new({ title: "Gun lost at wedding!", user: user66213, address: "1111 Parrot Jungle Trail, Miami, FL 33132, Vereinigte Staaten", content: "My cousin got married to his pet crocodile and ever since I cannot find my gun. It is yellow with glitter and I think there were some bullets. I really need it back, it was a farewell gift before my baby daddy went to prison."})
post14.save!
post15 = Post.new({ title: "Any expats around?", user: user66222, address: "602 NW 136th Ave, Miami, FL 33182, Vereinigte Staaten", content: "Miami gets really lonely from time to time. Does anybody know of an expat meetup or something like that? Preferably for European Entrepreneurs?"})
post15.save!
post16 = Post.new({ title: "Beerpong tournament", user: user32777, address: "Columbiastraat 8, 2030 Antwerpen, Belgien", content: "A group of 10 students, chill vibe. Aged 18 - 26. Come join us. BYOB!!!!"})
post16.save!
post17 = Post.new({ title: "Trash in front of elementary school!!", user: user98765, address: "Lindenlei 27, 2900 Schoten, Belgien", content: "Some rowdy teenagers have been trashing the entire pickup area in front of an elementary school. I wouldn't be surprised if the drank beer! We need to stop this."})
post17.save!
post18 = Post.new({ tiitle: "Free oil change!", user: user15233, address: "R. Marina, 350 - Bento Ribeiro, Rio de Janeiro - RJ, 21331-070, Brasilien", content: "My uncle's repair shop does a promo event and Saturday! They offer free oil changes!"})
post18.save!
post19 = Post.new({ tiitle: "Dadi freyr concert!!!", user: user15233, address: "8Q69+QQJ, Nesjum, 781 Höfn í Hornafirði, Island", content: "Bring your friends and enjoy an evening with great music!"})
post19.save!
post20 = Post.new({ title: "Police action at Oude Vrouwekerk", user: user2051, address: "Onze Lieve Vrouweplein 7, 6211 HD Maastricht, Niederlande", content: "What's going on here? I saw like 12 police cars"})
post20.save!
post21 = Post.new({ tiitle: "Navy Pigeon?!", user: user15233, address: "Oosterweg 74, 9724 CK Groningen, Niederlande", content: "I saw a little pigeon with a navy uniform? It even had a little whistle and seemed very angry when I came closer. I must have interupted a drill or sth. Does anybody know about this?"})
post21.save!
post22 = Post.new({ title: "Why is Düsseldorf so much better than Cologne?", user: user44226, address: "Königsallee 22, Düsseldorf", content: "I don't get it. Why do Düsseldorfers keep saying that? So far, I cannot really agree."})
post22.save!
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
comment9g = Comment.new({ content: "My friend's grandma will be baking Schwarzwälder Kirsch for them. I guarantee it is the BEST SCHWARZWÄLDER KIRSCH IN THE WORLDDDDD!!!!!!", user: user112, post: post9})
comment9g.save!
comment9h = Comment.new({ content: "Is it dog friendly?", user: user2508, post: post9})
comment9h.save!
# for no.10
comment10a = Comment.new({ content: "Thank you! I picked them up today 👩🏼‍💻", user: user991, post: post10})
comment10a.save!
# for no.11
comment11a = Comment.new({ content: "I wanna goooooo! It's - a - me! Mariam's Brother 😈!!!", user: user23444, post11})
comment11a.save!
comment11b = Comment.new({ content: "The trailer looks trashy!", user: user59345, post11})
comment11b.save!
comment11c = Comment.new({ content: "Luckily this is not a Netflix production...", user: user31234, post11})
comment11c.save!
comment11d = Comment.new({ content: "kids nowadays don't even know who the Super Mario Bros. are... ☠️", user: user23444, post11})
comment11d.save!
comment11e = Comment.new({ content: "🍕❤️‍🔥", user: user53450, post11})
comment11e.save!
# for no.12
comment12a = Comment.new({ content: "Streetfood!!!!", user: user23444, post12})
comment12a.save!
comment12b = Comment.new({ content: "I prefer the small taco stand right in front of Museo Franz Meyer", user: user59345, post12})
comment12b.save!
comment12c = Comment.new({ content: "Great, thank you. So streetfood over restaurants? What about instagrammable restaurants?", user: user33, post12})
comment12c.save!
comment12d = Comment.new({ content: "This 2022, nobody is on IG anymore 📴", user: user59345, post12})
comment12d.save!
comment12e = Comment.new({ content: "El 123, it is a Thai place", user: user59446, post12})
comment12e.save!
comment12f = Comment.new({ content: "A bit outside, but worth the trip is Rincón Helado at Calle 3 de Mayo, Calle Reforma in 520444. It is a icecream shop.", user: user222, post12})
comment12f.save!
# for no.13
comment13a = Comment.new({ content: "Count me in! I will bring a friend!", user: user15233, post13})
comment13a.save!
comment13b = Comment.new({ content: "Will there be girls?", user: user2051, post13})
comment13b.save!
comment13c = Comment.new({ content: "What about beer? Anybody giving out beer?", user: user19456, post13})
comment13c.save!
comment13d = Comment.new({ content: "My BF and I will be joining! We cannot wait! Thanks for offering this :)", user: user30301, post13})
comment13d.save!
# for no.14
comment14a = Comment.new({ content: "Obv a troll! ☠️", user: user15233, post14})
comment14a.save!
comment14b = Comment.new({ content: "Get outta here! That never happened! 😹", user: user60696, post14})
comment14b.save!
comment14c = Comment.new({ content: "I mean.... we are in Florida. Anything is possible.", user: user66222, post14})
comment14c.save!
comment14d = Comment.new({ content: "This will hit the internet in 3, 2, 1...", user: user30301, post14})
comment14d.save!
comment14e = Comment.new({ content: "I found it and handed it over the authorities!!! 🤠", user: user59366, post14})
comment14e.save!
comment14f = Comment.new({ content: "Just another day in Florida...", user: user29111, post14})
comment14f.save!
# for no.15
comment15a = Comment.new({ content: "French Finance Expert here, I would like to join!", user: user44226, post15})
comment15a.save!
comment15b = Comment.new({ content: "There is a monthly meetup at Novikov Miami in Downtown. We meet on the first Tuesday of every month. We do require a minimum purchase of $ 40.", user: user60696, post15})
comment15b.save!
comment15c = Comment.new({ content: "Cool, there is also a German Restaurant that holds biweekly Beer Tastings. Checkout Wunderbar Sports Bar & Grill. Mostly Germans attend, but also peopple from other nations.", user: user66222, post15})
comment15c.save!
comment15d = Comment.new({ content: "I would love to join!", user: user30301, post15})
comment15d.save!
comment15e = Comment.new({ content: "Can I join? I am a Polish musician who just got married to an American.", user: user3011, post15})
comment15e.save!
# for no.16
comment16a = Comment.new({ content: "Cool! What time?!", user: user15233, post16})
comment16a.save!
comment16b = Comment.new({ content: "All day everyday! Just come by whenever you feel like it.", user: user32777, post16})
comment16b.save!
# for no.17
comment17a = Comment.new({ content: "Let them enjoy the weather! What a Karen move 🤮", user: user44226, post15})
comment17a.save!
comment17b = Comment.new({ content: "This again... My son told me that some grumpy old lady has been screaming at them and accusing them of trashing up the whole place. They are there to play ping pong. Seriously... get a life!", user: user222, post15})
comment17b.save!
comment17c = Comment.new({ content: "Stop harassing our children! They were locked in with the pandemic. Enough is enough! If you harass my child one more time, I will report you!", user: user66222, post15})
comment17c.save!
comment17d = Comment.new({ content: "My little brother came home crying because this crazy lady took away his ping pong bat. That was his birthday present. We need to stop this lady. She poses a real threat to children.", user: user222, post15})
comment17d.save!
comment17e = Comment.new({ content: "This is getting way out of hand. @old lady; just let the kids live. @parents: Teach your children to be respectful of the environment - just in case.", user: user99003, post15})
comment17e.save!
# for no.20
comment20a = Comment.new({ content: "They are not real, they are filming for a movie :)", user: user23444, post20})
comment20a.save!
comment20b = Comment.new({ content: "All fake, it's a for a movie!!!", user: user59446, post20})
comment20b.save!
# for no.21
comment21a = Comment.new({ content: "That was Lt. Pietje van Bloemen, a real legend!", user: user23444, post21})
comment21a.save!
comment21b = Comment.new({ content: "It's best to leave him alone when he is working. He is saving our country from climate change!!", user: user44226, post21})
comment21b.save!
comment21c = Comment.new({ content: "I once offered him a piece of Frikandel and he got so mad he sent his troop after me", user: user44226, post21})
comment21c.save!
comment21d = Comment.new({ content: "haha, classic Pietje!", user: user15233, post21})
comment21d.save!
# for no.22
comment22a = Comment.new({ content: "LIES!!!! Cologne is the best city in the entire world!!!!", user: user23444, post22})
comment22a.save!
comment22b = Comment.new({ content: "Clearly, they have been brainwashed. Nobody in their right mind would think that!", user: user30009, post22})
comment22b.save!
comment22c = Comment.new({ content: "This war has been going on for ages. Both cities suck. Frankfurt is the best city in Germany!", user: user2589, post22})
comment22c.save!
comment22d = Comment.new({ content: "#köllealaafyou #köllefornia #kölle", user: user30009, post22})
comment22d.save!
comment22e = Comment.new({ content: "I think people perfer Düsseldorf because it is very clean", user: user221, post22})
comment22e.save!
comment22f = Comment.new({ content: "Düsseldorf is home of Die Toten Hosen!", user: user32733, post22})
comment22f.save!
comment22g = Comment.new({ content: "The fashion!", user: user499, post22})
comment22g.save!
comment22h = Comment.new({ content: "Come on, everybody prefers the city that feels like home. There is no better city.", user: user66222, post22})
comment22h.save!
comment22i = Comment.new({ content: "I moved from CGN to DD and my heart never fully recovered.", user: user59343, post22})
comment22i.save!