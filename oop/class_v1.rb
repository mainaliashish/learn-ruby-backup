class Human
  @@number_of_humans = 0

  def initialize
    @@number_of_humans += 1
  end

  def Human.total_number_of_humans
    @@number_of_humans
  end
end

# human = Human.new
puts Human.total_number_of_humans
human = Human.new
human_one = Human.new
puts Human.total_number_of_humans
