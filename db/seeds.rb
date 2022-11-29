# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Incident.destroy_all
User.destroy_all
user = User.create!(email: 'teste@teste.com', password: '123123')
Incident.create!(user:, location: "Rua Jericó, 193, Vila Madalena, São Paulo - SP, 05435-040", incident_type: "Le Wagon")
# Incident.create(location: "Rua Fidalga, 809-839, Pinheiros, São Paulo - SP, 05432-000", incident_type: "Praça Éder Sader, latitude: , longitude: "),
# Incident.create(location: "Rua Original, 87, Sumarezinho, São Paulo - SP, 05435-050", incident_type: "Bar do Sasha, latitude: ,longitude: "),
# Incident.create(location: "Rua Aspicuelta, 524, Vila Madalena, São Paulo - SP, 05433-011", incident_type: "O Pasquim Bar e Prosa, latitude: ,longitude: "),
# Incident.create(location: "Rua Deputado Lacerda Franco, 148, Pinheiros, São Paulo - SP, 05418-000", incident_type: "Golden Power Pinheiros By Fênix Hotéis, latitude: ,longitude: "),
# Incident.create(location: "Avenida Rebouças, 3970, Pinheiros, São Paulo - SP, 05402-600", incident_type: "Shopping Eldorado, latitude: ,longitude: "),
# Incident.create(location: "Avenida Brigadeiro Faria Lima, 2232, Jardim Paulistano, São Paulo - SP, 01451-000", incident_type: "Shopping Iguatemi, latitude: ,longitude: ")
