require 'pry'

class School
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(student, grade)
    roster[grade] ||= [] 
    roster[grade] << student
    #binding.pry
  end
  
  def grade(student_grade)
    roster[student_grade]
    #binding.pry
  end
  
  def sort
    roster.each do |student_grade, students|
      sorted = students.sort
      roster[student_grade] = sorted
      #binding.pry
    end
    
  end
  
end

