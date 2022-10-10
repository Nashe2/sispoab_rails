# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

def seed_materials
    Material.create(
        name: "Hilo",
        description: "De primera",
        quantity: 100,
        unit_price: 290.0,
        is_thread: true
    )

    Material.create(
        name: "Hilo",
        description: "De tercera",
        quantity: 150,
        unit_price: 250.0,
        is_thread: true
    )

    Material.create(
        name: "Base de mecedora",
        description: "Madera de caoba",
        quantity: 50,
        unit_price: 1900.0,
        is_thread: false
    )
end

seed_materials