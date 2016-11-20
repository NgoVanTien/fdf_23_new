User.create! name: "admin", email: "admin@gmail.com", password: "123456789",
password_confirmation: "123456789", role: 1
User.create! name: "user1", email: "user1@gmail.com", password: "123456789",
password_confirmation: "123456789", role: 0
User.create! name: "user", email: "user@gmail.com", password: "123456789",
password_confirmation: "123456789", role: 0

5.times do
  name  = Faker::Name.name
  description = Faker::Lorem.sentence(5)
  Category.create! name: name, description: description
end
