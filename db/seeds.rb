# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Flare.destroy_all

u1 = User.create!({
  first_name: "Tracy",
  last_name: "Wu",
  username: "tracywu",
  description: "This is the first user",
  image: "profile pic goes here",
  location: "Shoreditch",
  email: "twu@gmail.com",
  password: "password",
  password_confirmation: "password"
}),

u2 = User.create!({
  first_name: "John",
  last_name: "Smith",
  username: "jsmith",
  description: "This is the second user",
  image: "profile pic goes here",
  location: "Knightsbridge",
  email: "jsmith@gmail.com",
  password: "password",
  password_confirmation: "password"
}),

f1 = Flare.create!({
  user_id: 1,
  title: "Highaskite @ Shoreditch",
  category: "Music",
  location: "Shoreditch",
  description: "1 x highaskite ticket available, gig starting in 30 minutes",
  image: "highaskite ticket pic goes here",
  date: "230416",
  time: "1700"
})

f2 = Flare.create!({
  user_id: 1,
  title: "SectionBoyz @ Brixton",
  category: "Gig",
  location: "Brixton",
  description: "1 x SectionBoyz ticket available, gig starting in 30 minutes",
  image: "sboyz ticket pic goes here",
  date: "010416",
  time: "2100"
})

f1 = Flare.create!({
  user_id: 2,
  title: "Jazz @ Soho",
  category: "Music",
  location: "Ronnie Scotts",
  description: "1 x jazz ticket available, gig starting in 30 minutes",
  image: "ronnie scotts pic",
  date: "010516",
  time: "1800"
})

f3 = Flare.create!({
  user_id: 2,
  title: "Beethoven @ Royal Albert",
  category: "Recital",
  location: "Royal Albert Hall",
  description: "1 x Beethoven ticket available, gig starting in 30 minutes",
  image: "Beethoven pic",
  date: "010916",
  time: "2000"
})