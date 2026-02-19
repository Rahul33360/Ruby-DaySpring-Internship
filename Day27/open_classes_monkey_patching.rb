class String
    # monkey patching
    # upcase overridden
    def upcase
        "upcase method is overridden"
        # length
    end
    def ownMethodName
        downcase
    end
end


str = "strINg"
puts str.upcase
puts str.ownMethodName
