require './mod'

class Reader

  attr_accessor :r_name, :email, :city,  :street, :house
  include Mmm
  def initialize(name, email, city, street, house)
    @r_name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end

end
