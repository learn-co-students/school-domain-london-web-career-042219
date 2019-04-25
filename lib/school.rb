class School

	

	def initialize(name)
		@roster = {}
	end


	def roster
		@roster
	end

	def add_student(name, grade)
		if(!@roster.key?(grade))
		@roster[grade] = []
		end
		@roster[grade] << name
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		sorted_hash = {}
		@roster.map { |grade, name| sorted_hash[grade] = name.sort  }
		sorted_hash
	end

end