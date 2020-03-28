# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'admin@admin.com', username: 'desafiovamoscontodo', password: 'XAHTJEAS23123%23', password_confirmation: 'XAHTJEAS23123%23')
admin = User.first
admin.add_role :admin

4.times{ |n| Project.create!(name: "Proyecto #{n+1}", description: "Lorem ipsu dolor sit....", start_date: "01.01.2020", end_date: "01.01.2021", state: "en progreso", user: User.first)} 
4.times{ |n| Project.create!(name: "Proyecto #{n+1}", description: "Lorem ipsu dolor sit....", start_date: "01.01.2018", end_date: "01.01.2019", state: "terminado", user: User.first)} 
4.times{ |n| Project.create!(name: "Proyecto #{n+1}", description: "Lorem ipsu dolor sit....", start_date: "01.06.2020", end_date: "01.01.2022", state: "propuesta", user: User.first)} 

