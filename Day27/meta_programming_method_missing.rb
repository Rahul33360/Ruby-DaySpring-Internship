class Vendor
    def method_missing(method_name,*args)
        # puts "method is Missing doesn't wxist"
        if method_name.to_s.start_with?("find_by")
            substrValue = method_name.to_s.sub("find_by_","")
            # puts substrValue
            puts "find_by_#{substrValue} : #{args.first}" 
        end
    end
end


obj1 = Vendor.new
obj1.find_by_name("rahul",34)
obj1.find_by_email("rahul@gmail.com")
obj1.find_by_age(23)


