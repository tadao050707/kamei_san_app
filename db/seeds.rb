# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: 'admin',
  email: 'admin1@example.com',
  admin: 'true',
  encrypted_password: 'password',
  reset_password_token: 'password',
  gender: "女性",
  age: "42"
  )

10.times do |i|
  User.create!(name: "user#{i+1}",
              email: "test_test#{i+1}@example.com",
              encrypted_password: 'password',
              reset_password_token: 'password',
              gender: "女性",
              age: "30#{i+1}"
              )

10.times do |i|
  Answer.create!(user_id: i + 1,
              select_answer: "A",
              group_id: 1,
              quiz_id: 1,
              created_at: "2022/12/20",
              )  
end