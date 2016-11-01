# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

users = User.create([
  {name: "James", email: 'jcostello10@gmail.com', password: "abc123", password_confirmation: "abc123" },
  {name: "Ace", email: "mrace@gmail.com", password: "abc123", password_confirmation: "abc123" }
  ])

puts "Database seeded with #{users.length} users!"


Post.destroy_all

posts = Post.create([
  {title: "Title1", content: "Quotes?", vote: 10, user_id: 1 },
  {title: "Title2", content: "Facts?", vote: 0, user_id: 2 },
  {title: "Title3", content: "Content3", vote: 100, user_id: 2}
  ])

puts "Database seeded with #{posts.length} posts!"
