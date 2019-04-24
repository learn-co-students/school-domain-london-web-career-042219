require 'pry'

class School

  attr_writer :name
  attr_accessor :roster


def initialize(name)
  @name = name
  @roster = {}
end

def add_student(name, year)

roster[year] ||= []
roster[year] << name
end

def grade(year)
   roster.detect do |group, name|
     if group == year
       return name
     end
   end
end

def sort
  new_hash = {}
  roster.each do |group, name|
    new_hash[group] = name.sort
end
new_hash
end



end
