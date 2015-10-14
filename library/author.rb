class Author
  attr_accessor :year_of_birth, :year_of_death, :name

  def initialize  name, biography
    @name = name
    @biography = biography
  end
  
end
