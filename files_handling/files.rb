# creating a new file
# check if file exists
if(!File.file?('first_file.txt')) 
  file = File.new("first_file.txt", "w")
else 
  # puts 'file already exists.'
end

# Opening and closing a file
file_one = File.open("first_file.txt", "r+")
# // Writing in a file
# File.write(file_one, "Hello World \n")
# File.write(file_one, [1,2,3].join("\n"), mode: "a")
# File.write(file_one, "\nAppend data to a file.", mode: "a")
# // reading file
read_file = File.read("first_file.txt")
# read_file.lines.each do |line|
#   puts line
# end

File.foreach(file_one) { |line| puts line }

# // renaming a file
# File.rename("oldname", "newname")
# File.delete("filename")

file_one.close




# Ruby File methods
puts File.size("first_file.txt")
puts File.ctime("first_file.txt") # created datetime
puts File.mtime("first_file.txt") # modified datetime
puts File.atime("first_file.txt") # accessed datetime
puts File.exists?("first_file.txt")
puts File.extname("first_file.txt")
puts File.basename("first_file.txt")
puts File.dirname("first_file.txt")
puts File.executable?("first_file.txt")
puts File.ftype("first_file.txt")
puts Dir.glob("*")
puts Dir.pwd
puts Dir.mkdir("test")
# puts Dir.mktmpdir("test")
puts Dir.empty?("test")


