# code here!
# code here!

class School
  attr_accessor :name, :roster
  def initialize(school_name)
    @name = school_name
    @roster = {}
  end
  
  def add_student(name, grade)
    if !@roster[grade]
      @roster[grade] = []
    end
    @roster[grade] << name
  end
  
  def grade(year)
    @roster[year]
  end
  
  def sort 
    sorted_grades = {}
    @roster.each do |k,v|
      sorted_grades[k] = v.sort
    end 
    sorted_grades.sort.to_h 
  end
end