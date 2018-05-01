require './mod'

class Book

  attr_accessor :title, :author
  include Mmm
  def initialize(title, author)
    @title = title
    @author = author
  end

end
