# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Category.delete_all
Venue.delete_all
Event.delete_all

Category.create! [
  { name: 'Concierto' },
  { name: 'Feria' },
  { name: 'Evento deportivo' }
]

Venue.create! [
  { name: 'Estadio San Carlos', address: 'San Carlos de Apoquindo 2200', capacity: 15_000 },
  { name: 'Estadio Nacional', address: 'Avenida Grecia s/n', capacity: 10_000 },
  { name: 'Parque Intercomunal de la Reina', address: 'Avenida Francisco de Bilbao 8105', capacity: 35_000 }
]

Event.create! [
  { name: 'Rod Stewart', date: Date.today + 100.days, venue: Venue.first, category: Category.first },
  { name: 'Bad Bunny', date: Date.today + 15.days, venue: Venue.second, category: Category.first },
  { name: 'Campeonato mundial de trial', date: Date.today + 55.days, venue: Venue.third, category: Category.third }
]
