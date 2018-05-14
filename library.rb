require './author'
require './book'
require './reader'
require './order'
require 'facets'
require 'pry'

class Library
  attr_accessor :authors, :books, :readers, :orders

  def initialize
    @authors = []
    @books = []
    @readers = []
    @orders = []
  end

  def add_author(new_author)
    @authors << new_author
  end

  def add_book(new_book)
    @books << new_book
  end

  def add_reader(new_reader)
    @readers << new_reader
  end

  def add_order(new_order)
    @orders << new_order
  end

  def find_most_popular_books
    p = @orders.map(&:book).frequency.sort_by(&:last).last
    puts "The most popular book is \"#{p[0]}\". It was taken #{p[1]} times."
  end

  def find_most_popular_reader
    r = @orders.map(&:reader).frequency.sort_by(&:last).last
    puts "#{r[0]} most active reader, he took #{r[1]} books."
  end

  def how_much_took_popular_books
    p = @orders.group_by(&:book).map { |i, o| [i, o.map(&:reader).uniq.count] }.to_h
    p.sort_by { |_key, value| value }.last(3).to_a.sample(1).to_h.each do |k, v|
      puts "The book \"#{k}\" was taken by #{v} peoples"
    end
  end

  def save_library(lib_name = 'Data_library.txt')
   if File.exist?(lib_name)
     data = Hash.new
     data[:authors] = @authors.map do |author|
       { name: author.name,
         biography: author.biography }
     end
     data[:books] = @books.map do |book|
       { title: book.title,
         author: book.author }
     end
     data[:readers] = @readers.map do |reader|
       { name: reader.r_name,
         email: reader.email,
         city: reader.city,
         street: reader.street,
         house: reader.house }
     end
     data[:orders] = @orders.map do |order|
       { book: order.book,
         reader: order.reader,
         date: order.date }
     end
     File.open(lib_name, 'w') { |file| file.write(data) }
   else
     File.new(lib_name, 'w')
     File.open(lib_name, 'w') { |file| file.write(data) }
   end
 end
 def read_library(lib_name = 'Data_library.txt')
   if File.exist?(lib_name)
     get_data = eval(File.read(lib_name))
     get_data.each do |key, value|
       case key
       when :authors
         value.each do |author|
           @authors << Author.new(author[:name],
                                  author[:biography])
         end
       when :books
         value.each do |book|
           @books << Book.new(book[:title],
                              book[:author])
         end
       when :readers
         value.each do |reader|
           @readers << Reader.new(reader[:name],
                                  reader[:email],
                                  reader[:city],
                                  reader[:street],
                                  reader[:house])
         end
       when :orders
         value.each do |order|
         @orders << Order.new(order[:book],
                              order[:reader],
                              order[:date])
         end
       end
     end
   else
     puts 'There is no such Library.'
   end
 end
end
