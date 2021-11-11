require './person'
# Create class student
class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    @classroom = classroom
    super(age, name, parent_permission)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def clasroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
