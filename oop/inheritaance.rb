class Human
    def talk
        "Hello"
    end
end

class Male < Human

end

class Female < Human

end

john = Male.new
puts john.talk
gita = Female.new
puts gita.talk


