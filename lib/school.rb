#require 'pry'

class School

attr_accessor :name, :roster


  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student (name, grade)
    if @roster[grade] != nil
      @roster[grade] << name
    else @roster[grade] = [name]
    end
  end

  def grade (grade)
    @roster[grade]
    end

  def sort
    @roster.each do |k,v|
      v.sort!
    end
  end

end

school = School.new("Bayside High School")
school.roster
school.add_student("Zach Morris", 9)


#binding.pry
