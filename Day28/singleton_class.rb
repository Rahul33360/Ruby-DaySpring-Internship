#   syntax for singleton 
# class Singleton
#     def method
#         p "mehtod"
#     end
# end

# obj1 = Singleton.new
# obj1.singleton_class.class_eval do
#     def s_ton        
#         puts "Singleton class"
#     end
# end

# obj1.s_ton
# obj1.method



#   another way to write singleton class

# class << obj1
#     def val
#         p "aa"
#     end
# end

# obj1.val
# d = Singleton.new
# d.method




# -----------------------

# class SimpleClass
# end

# SimpleClass.class_eval do
#     def third_method
#         p "normal class with class_eval"
#     end
# end

# # obj = SimpleClass.new
# # obj.third_method

# SimpleClass.third_method


# -----------------------

# class SimpleClass
# end

# obj = SimpleClass.new

# obj.instance_eval do
#     def third_method
#         p "normal class with instance_eval"
#     end
# end

# obj.third_method


# -------------

class Normal
    def initialize(name)
        @name = name
    end
end

n = Normal.new("Rahul")
n.instance_eval do 
    puts @name
end

n.singleton_class.instance_eval do
    puts @name
end

