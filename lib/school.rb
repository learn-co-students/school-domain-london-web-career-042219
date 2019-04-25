require 'pry'
class School

  attr_accessor :roster
  @@all = []

  def initialize(school, roster = {})
    @school = school
    @roster = roster # will contain keys of grade levels
    @@all << self
  end

  def add_student(student, grade) #how will you add key/value pairs to it, where the value is an array?
  # should be able to add a student to the school by calling this

    if roster[grade].class == NilClass
      roster[grade] = []
      roster[grade] << student
    else
      roster[grade] << student
    end
  end

  def self.roster
    @@all
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    self.roster.values.each {|array| array.sort!}
    self.roster
  end

end

bayside = School.new("Bayside High School")
puts bayside.roster

"hello"
