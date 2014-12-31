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
  puts "target itself created: #{Target.find_or_create_by!({url:'http://apppinger.herokuapp.com', user_id:1})}"
  puts "target itself created: #{Target.find_or_create_by({url:'http://pagerenter.herokuapp.com', user_id:1})}"
  puts "target itself created: #{Target.find_or_create_by({url:'http://apprents.herokuapp.com', user_id:1})}"
puts '...Targets inserted.'.colorize(:light_blue)