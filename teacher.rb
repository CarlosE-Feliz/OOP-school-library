# Create class teacher
class Teacher < Person
  def initialize(age, specialization, name = 'Unknown')
    super(age, name)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
