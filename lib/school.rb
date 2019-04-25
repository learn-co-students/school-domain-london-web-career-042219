
# code here!
class School

  attr_accessor :roster
  attr_reader :name

  def initialize( name )
    @name=name
    @roster={}
  end

  def add_student( name, grade )

      if !@roster[grade]
        @roster[grade]=[]
      end
      @roster[grade]<<name

  end

  def grade( grade )
    @roster[grade]
  end

  def sort
    roster_sort={}

#    @roster = @roster.sort { |a, b| a<=>b }
#    @roster.each do | grade, grade_data |
#      grade_data=grade_data.sort { |a, b| a<=>b }
#      roster_sort[grade]=[]
#      roster_sort[grade]=grade_data
#    end

#    @roster=roster_sort

    @roster.map {|grade, name| roster_sort[grade]=name.sort }
    roster_sort

  end

end
