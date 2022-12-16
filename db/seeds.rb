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
  age: "1980",
  email: "admin1@example.com",
  password: "password",
  admin: true
)

@user2 = User.create!(
  name: "user2",
  gender: "男性",
  age: "2002",
  email: "user2@example.com",
  password: "password",
  admin: false
)

@user3 = User.create!(
  name: 'user3',
  gender: '女性',
  age: '1962',
  email: 'user3@example.com',
  password: 'password',
  admin: false
)

@user4 = User.create!(
  name: 'user4',
  gender: '男性',
  age: '1992',
  email: 'user4@example.com',
  password: 'password',
  admin: false
)

@user5 = User.create!(
  name: 'user5',
  gender: '女性',
  age: '1952',
  email: 'user5@example.com',
  password: 'password',
  admin: false
)

@group1 = Group.create!(
  name: 'dive'
)

@group2 = Group.create!(
  name: 'code'
)

Assign.create!(
  user_id: @user1.id,
  group_id: @group1.id
)

Assign.create!(
  user_id: @user2.id,
  group_id: @group1.id
)

Assign.create!(
  user_id: @user3.id,
  group_id: @group2.id
)

Assign.create!(
  user_id: @user4.id,
  group_id: @group2.id
)

Assign.create!(
  user_id: @user5.id,
  group_id: @group1.id
)

@quiz = Quiz.create!(
  title: "元気ですか〜？",
  image: File.open("./app/assets/images/quiz.png"),
  request_answer_on: Date.current
)

Answer.create!(
  user_id: @user1.id,
  select_answer: "A",
  group_id: @group1.id,
  quiz_id: @quiz.id,
)  

Answer.create!(
  user_id: @user2.id,
  select_answer: "B",
  group_id: @group1.id,
  quiz_id: @quiz.id,
)  

Answer.create!(
  user_id: @user3.id,
  select_answer: "A",
  group_id: @group2.id,
  quiz_id: @quiz.id,
)  

Answer.create!(
  user_id: @user4.id,
  select_answer: "B",
  group_id: @group2.id,
  quiz_id: @quiz.id,
)  

Answer.create!(
  user_id: @user5.id,
  select_answer: "C",
  group_id: @group1.id,
  quiz_id: @quiz.id,
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