# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@user1 = User.create!(
  name: "admin",
  gender: "女性",
  age: "42",
  email: "admin1@example.com",
  password: "password",
  admin: true
)

@user2 = User.create!(
  name: 'user2',
  gender: '女性',
  age: '20',
  email: 'user2@com',
  password: 'password',
  admin: false
)

@user3 = User.create!(
  name: 'user3',
  gender: '男性',
  age: '60',
  email: 'user3@com',
  password: 'password',
  admin: false
)

@user4 = User.create!(
  name: 'user4',
  gender: '男性',
  age: '30',
  email: 'user4@com',
  password: 'password',
  admin: false
)

@user5 = User.create!(
  name: 'user5',
  gender: '女性',
  age: '70',
  email: 'user5@com',
  password: 'password',
  admin: false
)



# User.create!(name: 'admin',
#   email: 'admin1@example.com',
#   admin: 'true',
#   encrypted_password: 'password',
#   reset_password_token: 'password',
#   gender: "女性",
#   age: "42"
# )

# 10.times do |i|
#   User.create!(name: "user#{i+1}",
#               email: "test_test#{i+1}@example.com",
#               encrypted_password: 'password',
#               reset_password_token: 'password',
#               gender: "女性",
#               age: "30#{i+1}"
#               )

# 10.times do |i|
#   Answer.create!(user_id: i + 1,
#               select_answer: "A",
#               group_id: 1,
#               quiz_id: 1,
#               created_at: "2022/12/20",
#               )  
# end