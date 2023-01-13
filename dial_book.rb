dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(dial_book)
  # name_of_cities = []
  # cities.each do |city| 
  #   name_of_cities.push(city[0])
  # end
  # return name_of_cities
  return dial_book.keys
end

# Get area code based on given hash and key
def get_area_code(dial_book, key)
  dial_book.each do |city|
    if key == city[0]
      return city
    end
  end
end

# Execution flow
loop do
  puts "Do you want to look up an area code based on city name? (Y/N)"
  input = gets.chomp.downcase
  break if input != "y"
  cities = get_city_names(dial_book)
  puts cities
  puts "Which city do you want to look up the area code for ?"
  city_key = gets.chomp.downcase
  
  if dial_book.include?(city_key)
    city_with_code = get_area_code(dial_book, city_key)
    puts "#{city_key} : #{city_with_code[1]}"
  else
    puts "No city found.."
  end

end