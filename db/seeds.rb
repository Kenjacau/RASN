# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
songs =
[
  [ "HipHop","Back That Azz Up","Juvenille","1992"],
[ "HipHop","Panda","Desiignerz","2016"],
[ "Top40s","Fireworks","Katy Perry","2012"],
[ "House","Yes Yes (Hybird Theory Remix)","Plump Djs","2016"],
]

songs.each do |genre, title, artist, year|
Song.create( genre: genre,title: title, artist: artist,year: year)
end

user =
[
  ["anon", "anon@gmail.com","password","password","House"],
 ["anon2", "anon2@gmail.com","password","password","EDM"],
 ["anon3", "anon3@gmail.com","password","password","Rock"],
]

user.each do |username, password,email,password_confirmation,favorite_genre|

  User.create(username: username,email: email, password: password,
  password_confirmation: password_confirmation, favorite_genre: favorite_genre)
end
