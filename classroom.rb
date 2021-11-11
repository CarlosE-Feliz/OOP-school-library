# Create class Classroom
class Classroom
  attr_reader :students
  attr_accessor :label

  def initialize(label)
    @label = label
    @students = []
  end

  def many_students(student)
    @students << student
    student.Classroom = self
  end
end
