require './person'
# create class corrector
class Corrector
  def correct_name(name = 'Unknown')
    name.capitalize
    name.first(10)
  end
end
