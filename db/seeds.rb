# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Création de 3 villes
paris = City.create(name: "Paris", zip_code: "75000")
lille = City.create(name: "Lille", zip_code: "59000")
lyon = City.create(name: "Lyon", zip_code: "69000")
puts "3 villes ajoutés"

#Création des promeneurs et des chiens
dogsitter1 = Dogsitter.new(name: "John", age: 26)
dogsitter1.city = paris
dogsitter1.save
dogsitter2 = Dogsitter.new(name: "Bob", age: 24)
dogsitter2.city = paris
dogsitter2.save
dogsitter3 = Dogsitter.new(name: "Louanne", age: 22)
dogsitter3.city = lille
dogsitter3.save
dog1 = Dog.new(name: "Johnny")
dog1.city = paris
dog1.save
dog2 = Dog.new(name: "Henry II")
dog2.city = lille
dog2.save
dog3 = Dog.new(name: "DogGynéco")
dog3.city = lille
dog3.save
puts "3 dogsitters et 3 dogs ajoutés"

#Création des promenades
stroll1 = Stroll.new
stroll1.dogsitter = dogsitter1
stroll1.dog = dog1
stroll1.save
stroll2 = Stroll.new
stroll2.dogsitter = dogsitter1
stroll2.dog = dog3
stroll2.save
stroll3 = Stroll.new
stroll3.dogsitter = dogsitter3
stroll3.dog = dog1
stroll3.save
stroll4 = Stroll.new
stroll4.dogsitter = dogsitter3
stroll4.dog = dog2
stroll4.save
stroll5 = Stroll.new
stroll5.dogsitter = dogsitter3
stroll5.dog = dog3
stroll5.save
stroll6 = Stroll.new
stroll6.dogsitter = dogsitter2
stroll6.dog = dog2
stroll6.save
puts "Différentes promenades ajoutées"
