# Ducttyping example

class Example1
    def display
        puts "inside Example 1"
    end
end

class Example2
    def display
        puts "inside Example 2"
    end
end

def printing(obj1)
    obj1.display
end

printing(Example1.new)
printing(Example2.new)


#  did not understand why this example is suitable for ductyping