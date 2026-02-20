# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


=begin Product1.create(name:"Ruby", descripition: "lang", price: 34, stock: 321, is_active: true)
Product1.create(name:"c#", descripition: "lang", price: 314, stock: 31, is_active: true)
=end

Product1.create([
    {name:"fa", descripition: "lang", price: 34, stock: 321, is_active: true},
    {name:"da", descripition: "lang", price: 314, stock: 31, is_active: true}
])

=begin  # this way we write for dummy data
Product1.create(
    name: Faker::Commerce.product_name,  # :: -> namespace symbol
    descripition: "this is sample discription",
    price: Faker::Commerce.price(range: 20...140),
    stock: rand(0..200),
    is_active: [true,false].sample  # sample is ruby liberary method, it will pick any random value from the given array 
) 
=end


# using same template with loop to generate many data
10.times do 
    Product1.create(
    name: Faker::Commerce.product_name,  # :: -> namespace symbol
    descripition: "this is sample discription",
    price: Faker::Commerce.price(range: 20...140),
    stock: rand(0..200),
    is_active: [true,false].sample  # sample is ruby liberary method, it will pick any random value from the given array 
    )
    end