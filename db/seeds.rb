# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#1.upto(10) {|i| Post.create(title: "Title#{i}", content: "Content#{i}")}

#User.create(email: "admin@example.com", password: "foobarfo", admin: true)

#1.upto(10) {|i| User.create!(email: "example#{i}@example.com", password: "foobarfo", admin: false)}

u = User.first
650.upto(10000) do |i|
  po = Post.create(title: "A#{i}", content: "Aaaaa#{i}")
  puts "Created: #{i}"
  10.times {|j| Comment.create(post_id: po.id, user_id: u.id, content: "komentar#{j}")}
end