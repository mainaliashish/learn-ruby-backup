class Student
    # allow both the getter and the setter functionality
    attr_accessor :first_name, :last_name, :email, :username, :password
    # only allow the getter functionality
    # attr_reader :username

    # @first_name
    # @last_name
    # @email
    # @username
    # @password

    def initialize(first_name, last_name, username, email, password)
        @first_name = first_name
        @last_name = last_name
        @email = email
        @username = username
        @password = password
    end

    # def username
    #     @username = @first_name +"_"+ @last_name
    # end

    # def first_name=(name)
    # # def first_name(name)
    #     @first_name = name
    # end

    # def first_name
    #     @first_name
    # end

    # def last_name=(name)
    # # def last_name(name)
    #     @last_name = name
    # end

    # def last_name
    #     @last_name
    # end

    # # this is a default method included in a class
    def to_s
        puts "First Name : #{@first_name}, Last Name : #{@last_name}"
    end
end

# ashish = Student.new
# puts ashish
# ashish.first_name("Ashish")
# ashish.first_name = "Ashish"
# ashish.last_name = "Mainali"
# ashish.email = "mainali@admin.com"
# # ashish.username
# puts ashish.first_name
# puts ashish.last_name
# puts ashish.email
# puts ashish.username


ashish = Student.new("Ashish", "Mainali", "ashish@admin.com", "ashish_mainali", "password")
puts ashish
john = Student.new("John", "Doe", "johndoe@admin.com", "john_doe", "password")
puts john

john.last_name = ashish.last_name
puts "John last name is altered."
puts john
