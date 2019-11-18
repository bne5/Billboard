25.times do
  Artist.create(
    first_name:Faker::Name.first_name,
    last_name:Faker::Name.last_name,
    group:Faker::Music.band,
    genre:Faker::Music.genre,
    age:Faker::Number.number(digits: 2),
    avatar:Faker::Superhero.name
    
  )
end

puts "25 People Seeded"