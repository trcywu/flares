

User.destroy_all
Flare.destroy_all

u1 = User.create!(
  first_name: "Tracy",
  last_name: "Wu",
  username: "tracywu",
  description: "This is the first user",
  location: "Shoreditch",
  email: "tracy@gmail.com",
  password: "password",
  password_confirmation: "password"
)

u2 = User.create!(
  first_name: "John",
  last_name: "Smith",
  username: "jsmith",
  description: "This is the second user",
  location: "Knightsbridge",
  email: "john@gmail.com",
  password: "password",
  password_confirmation: "password"
)

f1 = Flare.create!(
  user_id: u1.id, 
  title: "Highasakite @ Troxy",
  category: "Gig",
  location: "Whitechapel",
  description: "If anyone is in the area I have a spare ticket since my friend couldn't make it. Gig starts in 30 minutes. Pick up @ venue in person.",
  start_date: "20160429",
  start_time: "2016-04-29 20:00:00 UTC",
  address: "E1 0HX"
)

f2 = Flare.create!(
  user_id: u1.id, 
  title: "SectionBoyz @ Brixton",
  category: "Gig",
  location: "Brixton Academt",
  description: "2 x SectionBoyz ticket available, gig starting in 1 hour",
  start_date: "20160430",
  start_time: "2016-04-29 19:30:00 UTC",
  address: "SW9 9SL"
)

f3 = Flare.create!(
  user_id: u2.id, 
  title: "Jazz @ Soho",
  category: "Gig",
  location: "Ronnie Scotts",
  description: "My sister bailed on me last minute so I have a spare ticket to Regina Carter. Pick up at location.",
  start_date: "20160429",
  start_time: "2016-04-30 21:00:00 UTC",
  address: "W1D 4HT"
)

f4 = Flare.create!(
  user_id: u2.id,
  title: "English Ballet",
  category: "Dance",
  location: "Royal Albert Hall",
  description: "1 x Beethoven ticket available, gig starting in 30 minutes",
  start_date: "20160502",
  start_time: "2016-05-02 19:30:00 UTC",
  address: "EC2N 4AY"
)

f5 = Flare.create!(
  user_id: u2.id,
  title: "Manchester City vs Everton",
  category: "Sport",
  location: "Wembley Stadium",
  description: "2 x tickets available. Game starts in 15 minutes",
  start_date: "20160430",
  start_time: "2016-04-30 14:00:00 UTC",
  address: "HA9 0WS"
)

f6 = Flare.create!(
  user_id: u2.id,
  title: "Motown @ Shaftesbury Theatre",
  category: "Theatre",
  location: "Wembley Stadium",
  description: "2 x tickets available. Pick up under the name James Smith",
  start_date: "20160429",
  start_time: "2016-04-29 19:30:00 UTC",
  address: "WC2H 8DP"
)

f7 = Flare.create!(
  user_id: u2.id,
  title: "3 course Dinner @ The Greek Larder prepaid",
  category: "Theatre",
  location: "Wembley Stadium",
  description: "2 x tickets available. Pick up under the name James Smith",
  start_date: "20160527",
  start_time: "2016-05-27 19:00:00 UTC",
  address: "WC2H 8DP"
)

f8 = Flare.create!(
  user_id: u2.id,
  title: "Midsummer Night's Dream @ RSC",
  category: "Theatre",
  location: "London",
  description: "2 x tickets available. Pick up under the name Alison Banks",
  start_date: "20160429",
  start_time: "2016-04-29 14:00:00 UTC",
  address: "SE1 8XX"
)

f9 = Flare.create!(
  user_id: u2.id,
  title: "Cocktail Making class for 2 tonight",
  category: "Event",
  location: "Strongroom Bar & Kitchen",
  description: "2 x tickets available under the name Steven King",
  start_date: "20160429",
  start_time: "2016-04-29 20:00:00 UTC",
  address: "EC2A 3SQ"
)





u1.profile_pic = Rails.root.join("app/assets/images/flume.jpg").open
u1.save!

u2.profile_pic = Rails.root.join("app/assets/images/avicci.jpg").open
u2.save!

f1.photo = Rails.root.join("app/assets/images/highaskite.jpg").open
f1.save!

f2.photo = Rails.root.join("app/assets/images/section.jpg").open
f2.save!

f3.photo = Rails.root.join("app/assets/images/ronnie.jpg").open
f3.save!

f4.photo = Rails.root.join("app/assets/images/ballet.jpg").open
f4.save!

f5.photo = Rails.root.join("app/assets/images/manchestercity.jpg").open
f5.save!

f6.photo = Rails.root.join("app/assets/images/motown.jpg").open
f6.save!

f7.photo = Rails.root.join("app/assets/images/greek.jpg").open
f7.save!

f8.photo = Rails.root.join("app/assets/images/midsummer.jpg").open
f8.save!

f9.photo = Rails.root.join("app/assets/images/campari.jpg").open
f9.save!


