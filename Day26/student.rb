# # Example for Class, object,
# class Student

#     attr_accessor :height # abstraction & encapsulation


#     def initilize(name,age)
#         @name = name
#         @age = age
#     end
#     def display 
#         puts "Student #{@name} having age #{@age}"
#     end
#     def name    # getter
#         puts "Student #{@name}"
#     end
#     def name=(new_name)     # setter
#         @name = new_name
#     end
# end

# # name = gets.chomp
# # age = gets.chomp.to_i

# name = "rahul"
# age = 23

# obj1 = Student.new
# # obj1 = Student.new(name,age)

# obj1.initilize(name,age)
# # obj1.display
# # obj1.name

# obj1.name = "Kumar"

# p obj1.name


# Inheritance -----------

class MethodTypes
    def self.method
        puts "class method"
    end
    def instanceMethod
        puts "instance method"
    end
end


module ModuleMethod1 
    # include MethodTypes, NewMethodTypes
    def defmoduleMethod1
        puts "inside moduleMethod1"
    end
    # def initilize
    #     puts "inside initilize1"
    # end
    # def self.ModuleMethodSelf1
    #     puts "kmljk"
    # end

end


module ModuleMethod2 
    # include MethodTypes, NewMethodTypes
    def defmoduleMethod2
        puts "inside moduleMethod2"
    end
    # def initilize
    #     puts "inside initilize2"
    # end
end


class NewMethodTypes < MethodTypes 
    prepend ModuleMethod1, ModuleMethod2
    # include ModuleMethod1, ModuleMethod2

    def self.method
        puts "new class method"
    end
    def instanceMethod
        puts "new instance method"
    end
    def newAddedMethod
        puts "newAddedmethod called"
    end
end


# obj3 = ModuleMethod1.new
# obj3.moduleMethod1
# obj3.initilize

obj2 = NewMethodTypes.new

# obj2.defmoduleMethod1
# obj2.defmoduleMethod2
# obj2.ModuleMethodSelf1

puts NewMethodTypes.ancestors