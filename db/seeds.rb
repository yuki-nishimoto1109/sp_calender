# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "--------- create user"
User.create!(
  name: "test太郎",
  email: "test@test.com",
  password: "000000"
)


users = [
          ["Aさんの誕生日",   10,  5],
          ["Bさんの誕生日",    8, 30],
          ["Cのすけの誕生日", 12, 31],
          ["D氏の誕生日",      1,  5],
          ["結婚記念日",       8, 16],
          ["創立記念日",       9, 20],
          ["開店記念日",       8, 30]
        ]

puts "--------- create plan"
users.each do |user|
  Plan.create!(
    user_id: 1,
    title: user[0],
     body: user[0],
    month: user[1],
     date: user[2]
  )
end

puts "--------- all END"