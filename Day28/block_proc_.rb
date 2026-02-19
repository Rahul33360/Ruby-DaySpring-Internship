# 1) Blocks

# def firstMethod
#     yield
#     # yield
# end

# simpleMethod        # calling method
# firstMethod{puts "Method Printing"}     # inside this curly block any logic will be there and that will be catched by yield
# firstMethod{puts "Method Printing second time"} 
# firstMethod{puts "Method Printing second time"} {puts "Method Printing"}  # wont work because block (yield) wont allow multiple code block


# def secondMethod
#     yield "Rahul","Ruby"
# end

# secondMethod{puts "my name #{name}"}
# secondMethod do |*args|
#     p *args
#     p *args.class
# end

# secondMethod do |*args|
#     args.each_cons(2) do |a,b|
#         puts "#{a} + #{b}"
#     end
# end

# secondMethod do |*args|
#     args.each_with_index do |a,b|
#         puts "#{a} + #{b}"
#     end
# end



# 2) Proc

# val = Proc.new{puts "Method Printing first time"}
# val.call    # Method Printing first time

# val2 = Proc.new{|a| puts "#{a} this is a"}
# val2.call(3)    #   3
# val2.call     # if we pass no value, it will print nil


# def procDemo(p1,p2,p3)
#     p1.call
#     p2.call
#     p3.call
# end

# variable1 = Proc.new{puts "simple"}
# variable2 = Proc.new{puts "simple_2"}
# variable3 = Proc.new{puts "simple_3"}
# procDemo(variable1,variable2,variable3)

# def demo
#     p1 = Proc.new{return "simple proc"}
#     p1.call
#     "hee"   # this line not executing 
# end

# print demo




# 3) lambda

# l = -> {puts "classical dance"}
# l.call

# parameterised lambda

# p = ->(name,val){puts "#{name} #{val}"}
# p.call("rahul","kr.")
# p.call(3,5)
# p.call(3)   # # behaviour difference -> wrong number of arguments (given 1, expected 2)
# p.call      # behaviour difference -> wrong number of arguments (given 0, expected 2)


#  behaviour with return keyword
def mehtod
    p1 = -> {return "simple proc"} # it will return back from lambda without excuting the return statement logic. 
    p1.call
    "hee"   # this line will execut in lambda 
end

p mehtod


