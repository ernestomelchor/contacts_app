# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

contact = Contact.new({ first_name: "Sonya", last_name: "Blade", email: "sonyablade@example.com", phone_number: "1234567890" })
contact.save
contact = Contact.new({ first_name: "Sub", last_name: "Zero", email: "subzero@example.com", phone_number: "9876543210" })
contact.save
contact.savecontact = Contact.new({ first_name: "Liu", last_name: "Kang", email: "liukang@example.com", phone_number: "7771234567" })
contact.save
create db: seed
