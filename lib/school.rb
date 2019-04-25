require 'pry'
class School

  attr_reader :roster

  @@all = []

  def initialize(name)
    @name = name
    @roster = {}
    @@all << self
  end

  def self.all
    @@all
  end

  def add_student(name, grade)
    !@roster.key?(grade) ? @roster[grade] = [] : nil
    @roster[grade] << name
  end


  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end
#binding.pry
#puts "Mischief Managed!"
