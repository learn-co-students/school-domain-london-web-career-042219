class School
attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(new_student, grade)
    roster[grade]||=[]
    roster[grade] << new_student
  end

  def grade(grade)
    #[array of students with argument grade]
    roster[grade]
  end

  def sort
    #going through each grade
    @roster.each {|grade, names| @roster[grade] = names.sort  }
  end


end
