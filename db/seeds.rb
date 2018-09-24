50.times do
  Profile.create(
    name: Faker::Seinfeld.character,
    description: Faker::MichaelScott.quote,
    body: Faker::Hipster.paragraph,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.phone_number,
  )
end
