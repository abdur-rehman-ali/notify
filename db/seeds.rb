# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
    User.create(
        email: "user#{i+1}@gmail.com",
        password: 'dev1234',
        password_confirmation: 'dev1234'
    )
end

10.times do |j|
    4.times do |i|
        Inventory.create(
            name: "Water bottle #{i+1}",
            quantity: 4 + i,
            user_id: j+1,
        )
    end
end

