class Author

  attr_accessor :name, :bio

  def initialize(name, bio)
    @name, @bio = name, bio
  end

  def save
    file = File.open('1.txt', 'a') # { |file| file.write("Authors name: #{name}, bio: #{bio}") }
    file.write("Authors name: #{name}, bio: #{bio} \n")
  end

end

5.times do
  author = Author.new("Isaak Asimov", "Sci-fi writer")
  author.save
end

file = File.open('1.txt', 'r')
file.each_line do |line|
  puts line
end
