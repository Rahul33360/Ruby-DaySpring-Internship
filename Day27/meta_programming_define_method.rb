class User
    attr_accessor :role
    # define_method example for these methods
    # def admin?
    #     role == "admin"
    # end
    # def guest?
    #     role == "guest"
    # end

    # Example
    arr = ["guest","admin","members"]   
    arr.each do |role_name| 
        define_method("#{role_name}?") do   # define_method(parameter) -> this parameter name is Method_Name here.
            puts role == role_name
        end
    end

    # Example for Method Missing
    def method_missing(method_name,*args)
        puts "method is Missing doesn't wxist"
    end


end

obj1 = User.new

obj1.role = "admin"
obj1.admin?

# obj1.role = "guest"
obj1.guest?

obj1.developer

