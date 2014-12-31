# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'Inserting Users...'.colorize(:green)
  puts "user created: #{User.create!({name:'Ilton', email:'ii@i.i', password:'123', password_confirmation:'123'})}"
puts '...Users inserted.'.colorize(:light_blue)

puts 'Inserting Targets...'.colorize(:green)
  puts "target itself created: #{Target.create!({url:'http://apppinger.herokuapp.com'})}"
puts '...Targets inserted.'.colorize(:light_blue)