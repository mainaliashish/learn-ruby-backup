class Human
    HUMAN_AGE = 5
    attr_accessor :name, :age
    def initialize(hname, hage)
        self.name = hname
        self.age = hage * HUMAN_AGE
    end

    def to_s
        puts "This is #{name} and he is #{age} years old"
    end


end

ashish = Human.new("Ashish", 5)
puts ashish
ram = Human.new("Ram", 6)
puts ram
