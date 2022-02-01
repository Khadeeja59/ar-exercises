require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Please provide store name:"
print "> "
user_answer = gets.chomp
@new_store  = Store.create(name: user_answer, mens_apparel:false, womens_apparel: false)
@new_store.errors.full_messages.each do |error|
  puts error
end
