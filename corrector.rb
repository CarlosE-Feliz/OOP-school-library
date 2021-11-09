require './person.rb'
# create class corrector
class Corrector < Person
  def initialize(name = 'Unknown')
    super(name)
  end

  def correct_name
    name.capitalize
    name.first(10)
  end
end
