require './person'
# Create class student
class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name = 'Unknown')
    @classroom = classroom
    super(age, name)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def clasroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
