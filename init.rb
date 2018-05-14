require_relative './library.rb'

first_library = Library.new

author1 = Author.new("Joanne Rowling", "Is a British novelist, screenwriter, and producer who is best known for writing the Harry Potter fantasy series")
author2 = Author.new("Isaac Asimov", "Asimov believed his most enduring contributions would be his \"Three Laws of Robotics\"")
author3 = Author.new("Ernest Miller Hemingway", "Was an American novelist, short story writer, and journalist")
author4 = Author.new("Bernard Werber", "Is a French science fiction writer, active since the 1990s")

first_library.add_author(author1)
first_library.add_author(author2)
first_library.add_author(author3)
first_library.add_author(author4)

book1 = Book.new("Joanne Rowling", "Harry Potter and the Philosopher's Stone")
book2 = Book.new("Joanne Rowling", "Harry Potter and the Chamber of Secrets")
book3 = Book.new("Isaac Asimov", "The Caves of Steel")
book4 = Book.new("Isaac Asimov", "I, Robot")
book5 = Book.new("Isaac Asimov", "The Stars, Like Dust")
book6 = Book.new("Ernest Miller Hemingway", "The Old Man and the Sea")
book7 = Book.new("Ernest Miller Hemingway", "For Whom the Bell Tolls")
book8 = Book.new("Bernard Werber", "The Empire of the Angels")
book9 = Book.new("Bernard Werber", "The Butterfly of the Stars")

first_library.add_book(book1)
first_library.add_book(book2)
first_library.add_book(book3)
first_library.add_book(book4)
first_library.add_book(book5)
first_library.add_book(book6)
first_library.add_book(book7)
first_library.add_book(book8)
first_library.add_book(book9)

reader1 = Reader.new("Tony Stark", "Jarvis@avengers.com", "Florida", "Malibu Point", "10880")
reader2 = Reader.new("Jack Daniels", "Sad@gmail.com", "Dnipro", "Everywhere", "8")
reader3 = Reader.new("Chewbacca", "Aururu@jedi.com", "Kashyyyk", "Some_forest", "11")

first_library.add_reader(reader1)
first_library.add_reader(reader2)
first_library.add_reader(reader3)

order1 = Order.new("Harry Potter and the Philosopher's Stone", "Chewbacca")
order2 = Order.new("Harry Potter and the Chamber of Secrets", "Jack Daniels")
order3 = Order.new("Harry Potter and the Chamber of Secrets", "Tony Stark")
order4 = Order.new("The Caves of Steel", "Tony Stark")
order5 = Order.new("The Caves of Steel", "Tony Stark")
order6 = Order.new("I, Robot", "Tony Stark")
order7 = Order.new("The Stars, Like Dust", "Chewbacca")
order8 = Order.new("The Old Man and the Sea", "Tony Stark")
order9 = Order.new("The Old Man and the Sea", "Jack Daniels")
order10 = Order.new("The Old Man and the Sea", "Jack Daniels")
order11 = Order.new("For Whom the Bell Tolls", "Jack Daniels")
order12 = Order.new("For Whom the Bell Tolls", "Tony Stark")
order13 = Order.new("The Empire of the Angels", "Chewbacca")
order14 = Order.new("The Butterfly of the Stars", "Tony Stark")
order15 = Order.new("The Butterfly of the Stars", "Tony Stark")
order16 = Order.new("The Butterfly of the Stars", "Jack Daniels")
order17 = Order.new("The Butterfly of the Stars", "Chewbacca")

first_library.add_order(order1)
first_library.add_order(order2)
first_library.add_order(order3)
first_library.add_order(order4)
first_library.add_order(order5)
first_library.add_order(order6)
first_library.add_order(order7)
first_library.add_order(order8)
first_library.add_order(order9)
first_library.add_order(order10)
first_library.add_order(order11)
first_library.add_order(order12)
first_library.add_order(order13)
first_library.add_order(order14)
first_library.add_order(order15)
first_library.add_order(order16)
first_library.add_order(order17)

# Queries

first_library.find_most_popular_books
first_library.find_most_popular_reader
first_library.how_much_took_popular_books
first_library.save_library
first_library.read_library
puts "---------------------------------------------------"

# Test reading and writing data

library2 = Library.new
library2.read_library
# puts library2.inspect

library2.find_most_popular_books
library2.find_most_popular_reader
library2.how_much_took_popular_books
library2.save_library
library2.read_library