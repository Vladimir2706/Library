require 'date'

class Order

  attr_accessor :book, :reader, :date

  def initialize(book, reader, date = DateTime.now)
    @book = book
    @reader = reader
    @date = DateTime.now.strftime("%d/%m/%Y %H:/%M")

  end

end
