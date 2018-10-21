# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.create(name: :admin)
Role.create(name: :user)
Role.create(name: :company_user)

User.delete_all

user1 = User.create!(email: 'admin@easytravel.test',
                     password: '123456',
                     password_confirmation: '123456',
                     first_name: 'Admin',
                     last_name: 'easyTravel',
                     birth: '20-10-2018')
user1.remove_role(:user)
user1.add_role(:admin)
user2 = User.create!(email: 'user@easytravel.test',
                     password: '123456',
                     password_confirmation: '123456',
                     first_name: 'User',
                     last_name: 'easyTravel',
                     birth: '20-10-2018')
user2.add_role(:user)
user3 = User.create!(email: 'company_user@easytravel.test',
                     password: '123456',
                     password_confirmation: '123456',
                     first_name: 'Company',
                     last_name: 'easyTravel',
                     birth: '20-10-2018')
user3.remove_role(:user)
user3.add_role(:company_user)