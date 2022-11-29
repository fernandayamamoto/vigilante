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
Incident.create(location: "Rua Fidalga, 809-839, Pinheiros, São Paulo - SP, 05432-000", incident_type: "Praça Éder Sader"),
Incident.create(location: "Rua Original, 87, Sumarezinho, São Paulo - SP, 05435-050", incident_type: "Bar do Sasha"),
Incident.create(location: "Rua Aspicuelta, 524, Vila Madalena, São Paulo - SP, 05433-011", incident_type: "O Pasquim Bar e Prosa"),
Incident.create(location: "Rua Deputado Lacerda Franco, 148, Pinheiros, São Paulo - SP, 05418-000", incident_type: "Golden Power Pinheiros By Fênix Hotéis"),
Incident.create(location: "Avenida Rebouças, 3970, Pinheiros, São Paulo - SP, 05402-600", incident_type: "Shopping Eldorado"),
Incident.create(location: "Avenida Brigadeiro Faria Lima, 2232, Jardim Paulistano, São Paulo - SP, 01451-000", incident_type: "Shopping Iguatemi"),
Incident.create(location: "Avenida Brigadeiro Faria Lima, 3477, Itaim Bibi, São Paulo - SP, 04538-133", incident_type: "Google"),
Incident.create(location: "Ibirapuera, São Paulo - SP, 04507-000", incident_type: "Parque Ibirapuera"),
Incident.create(location: "Rua Abílio Soares, 912, Paraíso, São Paulo - SP, 04005-003", incident_type: "Bráz Pizzaria"),
Incident.create(location: "Rua Martinho Prado, 128, Bela Vista, São Paulo - SP, 01306-040", incident_type: "Museu Judaico"),
Incident.create(location: "Rua Augusta, 200, Consolação, São Paulo - SP, 01303-050", incident_type: "Parque Augusta"),
Incident.create(location: "Praça da República, República, São Paulo - SP, 14786-079", incident_type: "Praça da República"),
Incident.create(location: "Terminal Rodoviário Barra Funda, Barra Funda, São Paulo - SP, 01156-001", incident_type: "Terminal Rodoviário Barra Funda"),
Incident.create(location: "Rua Brigadeiro Gavião Peixoto, 123, Lapa, São Paulo - SP, 05078-000", incident_type: "Hospital Albert Sabin"),
Incident.create(location: "Praça General Porto Carreiro, Jaguaré, São Paulo - SP, 05331-040", incident_type: "Praça General Porto Carreiro"),
Incident.create(location: "Praça Roberto Gomes Pedrosa, 1, Morumbi, São Paulo - SP, 05653-070", incident_type: "Estádio Morumbi"),
Incident.create(location: "Praça da Sé, Centro, São Paulo - SP, 01001-000", incident_type: "Catedral da Sé"),
Incident.create(location: "Avenida Paulista, 1578, Bela Vista, São Paulo - SP, 01310-200", incident_type: "MASP"),
Incident.create(location: "Rua Vinte e Cinco de Março, 848, Centro Histórico de São Paulo, São Paulo - SP, 01021-100", incident_type: "25 de Março"),
Incident.create(location: "Rua Roberto Simonsen, 136, Centro Histórico de São Paulo, São Paulo - SP, 01017-020", incident_type: "Museu Solar da Marquesa de Santos"),
Incident.create(location: "Praça da Luz, 2, Luz, São Paulo - SP, 01120-010", incident_type: "Pinacoteca de São Paulo"),
Incident.create(location: "Rua da Cantareira, 306, Centro Histórico de São Paulo, São Paulo - SP, 01024-900", incident_type: "Mercado Municipal"),
Incident.create(location: "Rua Medeiros de Albuquerque, 82, Jardim das Bandeiras, São Paulo - SP, 05436-060", incident_type: "Beco do Batman"),
Incident.create(location: "Largo São Bento, Centro Histórico de São Paulo, São Paulo - SP, 01029-010", incident_type: "Mosteiro de São Bento")
