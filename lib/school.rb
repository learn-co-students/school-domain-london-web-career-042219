# code here!
require 'pry'

class School
    attr_reader :school_name,:roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(name, grade)
        if !@roster.key?(grade)
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(grade)
        return @roster[grade]
    end

    def sort
        @roster.each do |grade, students|
            @roster[grade] = students.sort!
        end
    end
end