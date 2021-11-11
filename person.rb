require './corrector'
require './rental'
# Create class person
class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..10_000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def age_of?
    @age >= 18
  end

  def can_use_service?
    age_of? || @parent_permission
  end

  def validate_name
    validate = Corrector.new
    @name = validate.correct_name(@name)
  end

  def add_rental(date, book)
    Rental.new(date, self, book)
  end
end
