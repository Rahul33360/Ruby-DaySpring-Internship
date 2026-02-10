class Student 
    def details
        puts "#{@name} #{@age}"
    end
    def initialize(name,age)
        @name = name
        @age = age
    end
end

obj = Student.new("as",31)
puts obj.details






# Difference between related methods
# Method	       Read	    Write
# attr_reader	    ✅	    ❌  (getter)
# attr_writer	    ❌	    ✅  (setter)
# attr_accessor	    ✅	    ✅  (both set and get)

# class Student
#     attr_reader :name, :age # allows u to use outside of class
#     def initialize(name,age)
#         @name = name
#         @age = age
#     end
# end

# obj1 = Student.new("ra",23)
# puts obj1.name
# puts obj1.age
