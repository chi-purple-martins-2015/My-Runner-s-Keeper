2.times do
  Runner.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, captain: true, phone_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.email, img_url: Faker::Avatar.image, password: "kaboom")
end

10.times do
  Runner.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, captain: false, phone_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.email, img_url: Faker::Avatar.image, password: "boom")
end

30.times do
  Runner.find(rand(1..12)).runs << Run.new(distance: Faker::Number.between(1, 10))
end
