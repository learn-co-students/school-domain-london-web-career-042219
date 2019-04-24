# code here!
#require 'pry'
class School

  attr_reader :roster

  def initialize(name)
    @school_name = name
    @roster = {}
  end

  def add_student(name, grade)
    #binding.pry
    @roster[grade] = [] if @roster[grade] == nil
    @roster[grade] << name
  end

  def grade(g)
    @roster[g]
  end

  def sort
    result = {}
    @roster.each do |grade, students|
      result[grade] = students.sort
    end
    result
  end

end