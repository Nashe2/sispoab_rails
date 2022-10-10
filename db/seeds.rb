# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#MATERIALS
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

#PEOPLE
def seed_people
    Person.create(
        name: "Paola Nashely",
        first_name: "Osorio",
        last_name: "Guzmán",
        phone: 9711252837,
        gender: "Mujer"
    )



        Person.create(
            name: "Juana",
            first_name: "Marín",
            last_name: "Rueda",
            phone: 9710293842,
            gender: "Mujer"
        )

            Person.create(
                name: "Ranulfo",
                first_name: "Girón",
                last_name: "Matus",
                phone: 9514253639,
                gender: "Hombre"
            )
        end

#PRODUCTS
def seed_products
    Product.create(
        name: "Hamaca",
        description: "Grande de 3 kilos",
        quantity: 1,
    )
end

seed_materials
seed_people
seed_products