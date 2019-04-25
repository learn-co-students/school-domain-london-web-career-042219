require 'pry'
require_relative './school.rb'

yale = School.new("Yale")

yale.add_student("Emma", 9)
yale.add_student("Danny", 9)
yale.add_student("Adam", 9)
yale.add_student("Ben", 9)
yale.add_student("Charlotte", 9)

binding.pry
puts "Mischief Managed!"
