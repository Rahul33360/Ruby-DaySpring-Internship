class Messenger
    def email(msg)
        "#{msg} email send"
    end
    def telegram(msg)
        "#{msg} telegram send"
    end
    private
    def whatapp(msg)
        "#{msg} whatsapp send accessing private method"
    end
end

obj1 = Messenger.new

# using this way we can call private methods also

method_name = :email
puts obj1.send(method_name,"meeow") # second parameter is value passing to the method


#here we are able to call private method
method_name = :whatapp
puts obj1.send(method_name,"mooo") # second parameter is value passing to the method
puts obj1.__send__(method_name,"mooo") # another way to write send (alias)

puts obj1.inspect
puts "--------------"
puts obj1.methods


# .class_eval

class Sample
    Sample.class_eval do 
        def demo
            "demo printing"
        end
    end    
    Sample.instance_eval do 
        def newdemo
            "newdemo printing"
        end
    end
end

obj2 = Sample.new
puts obj2.demo
puts Sample.newdemo