# raise TypeError.new("Something went wrong..")

class ValidateAgeError < StandardError; end

def validateAge(age)
  raise ValidateAgeError.new("Invalid age provided") if (20..50).include?(age)
  # raise ValidateAgeError, "Invalid age provided" if (20..50).include?(age)
end

begin
  validateAge(24)
rescue ValidateAgeError => e
  puts e.message
end
