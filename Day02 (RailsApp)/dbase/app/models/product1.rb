class Product1 < ApplicationRecord

    # Day19
    has_many :orders, dependent: :destroy

    # Day20
    has_and_belongs_to_many :tags
    has_many :offers, through: :product1s_offers


    # Day15
    has_one_attached :invoice
    has_many_attached :product_pic
    # has_one_attached:product_pic

    # Day14
    has_rich_text :feedback

    validate :invoice_format

    def invoice_format
        unless invoice.attached?
            errors.add(:invoice, 'is required')
        end

        unless invoice.content_type.in?(%w(application/msword application/pdf))
            invoice.purge
            errors.add(:invoice, 'Must be a PDF or a DOC file')
        end
    end

    # for invoice - only pdf is allowed
    # validates :invoice, attached: true, content_type: 'application/pdf'
    # do not allow special characters
    # validates :descripition, format: { without: /[<>&*$#]/, message: "cannot contain special characters like <, >, &, *, $, or #" }
    # or 
    # validates :descripition , format: { with: /\A[a-zA-Z0-9 ]+\z/ , message: "cannot contain special characters like <, >, &, *, $, or #" }
    # or
    # using custom validation
    validate :nospecialchars
    
    def nospecialchars
        return if descripition.blank?
        if descripition.match?(/[<>&*$#]/)
            errors.add "cannot contain special characters like <, >, &, *, $, or #"
        end
    end

    # date- 23/01/26  This is non parameterised scope.
    scope :out_of_stock, -> { where("stock <= ?", 0) }
    # scope :test_scope_for_joins, -> {joins(name_of_table.where)}
    # scope :demo_check -> query{we can write here any type of sql queries}
    
    # use inbuild validation and check absent, use acceptance method
    # active pending 
    validates :is_active, acceptance: true






    # custom validation do alphanumeric
    validate :name_alphanuumeric
    
    def name_alphanuumeric
        return if name.blank?
        unless name.match?(/\A[a-zA-Z0-9 ]+\z/)
            errors.add "only letters and numbers allowed and spaces"
        end
    end

    # if product is inactive (not marked checked) then we don't add the price only
    validate :only_price


    def only_price
        if is_active == false
            if price > 0
            # if name.present? || descripition.present? || stock.present?
            errors.add "When product is inactive, add price only"
            end
        end
    end

    # if is_active = true then only able to add stock
    validate :add_stock

    def add_stock
        if is_active == false && stock.present?
            error.add "first mark the is_active checked then stock can be added."
        end
    end










    
=begin 
    validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters are allowed" }
    validates :stock, numericality: true
    validates :price, numericality: true
    validates :descripition, length: { maximum: 500 }
    # validates :price, numericality: { greater_than_or_equal_to: 3}

    # this is custom validation 
    validate :check_avaliability

    def check_avaliability
        if stock == 0 && price >= 0
            errors.add "Enter the stock"
        end
    end 
=end

=begin     
    def check_avaliability
        # check for stock value more than 0
        # Product1.stock.select{|i| i > 0}
        # if stock > 0
        #     return true 
        # else
        #     return false
        stock.to_i > 0
        # or
        # stock>0? true: false
    end
    def apply_discount(amount)
        # apply discount using case statements
        case amount
        when 0..100
            return discount = 10
        when 101..200
            return discount = 20
        when 201..300
            return discount = 30
        else
            return discount = 5
        end
    end

    def total_amout(amount)
        # first check_avaliability then apply discount
        # call the apply_discount(value)
        total_amout = 0
        if check_avaliability 
            dis = apply_discount(amount)
            total_amout -= dis 
        # use any math method like round to roundoff the amount.
    end
=end

    
    # pluck helps us to get the specific column and we need to pass it as symbol.

=begin  
    @status = Product1.all.limit(10).pluck(:is_active).select{|val| val == false}
    @price  = Product1.all.pluck(:price).select{|pri| pri<200}.map{|i| i.to_i}.each{|j| j<11}
    @stock  = Product1.all.limit(10).pluck(:stock)
=end

end
# Q create the method inside a model assign a value to the all collecting values from the products and use select and apply condition if the price is greater then 200 then fetch that 10 elements in the front end






=begin  
 arr = Product1.all.limit(10)
 arr.map {|stock| stock*10}
=end