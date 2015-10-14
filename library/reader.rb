class Reader
  attr_accessor :name, :email, :city, :street, :house 

  def initialize name, email, address
    @name = name
    @email = email
    @city = address.city
    @street = address.street
    @house = address.house
  end
  

end
