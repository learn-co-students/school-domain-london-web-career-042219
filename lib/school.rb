# code here!
require 'pry'
class School
  
attr_reader :name, :roster, :i

  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def has_grade?(student_grade)
    roster.include?(student_grade)
  end
  
  def new_grade(student_grade)
      roster[student_grade] = []
  end 
  
  def add_student(student_name, student_grade)
    if has_grade?(student_grade) == false
      new_grade(student_grade)
    end
    roster[student_grade] << student_name
  end
  
  def grade(student_grade)
    roster[student_grade]
  end
  
  
  def sort
    roster.each_value(&:sort!)
  end
  
end

puts "Mischief Managed"