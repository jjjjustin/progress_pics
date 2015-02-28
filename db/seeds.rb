5.times do
  user = User.create(user_name: Faker::Name.name, email: Faker::Internet.email, password: "password")
  5.times do
    user.pictures.create(caption: Faker::Lorem.sentence(1), photo: Faker::Avatar.image)
  end
end



