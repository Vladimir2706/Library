require './mod'

class Author 
  attr_accessor :name, :biography

  include Mmm

  def initialize(name, biography)
    @name = name
    @biography = biography
  end
end
