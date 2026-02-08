class Customer1 < ApplicationRecord

    has_one_attached:profile_pic
    
    has_rich_text:aboutme   # this allows action_text

    validates :name , presence: true
    validates :email, presence: true

    # validates :profile_pic, content_type: ['image/png', 'image/jpg', 'image/jpeg']
    # non-parameterised scope.
    # scope :unique_email, -> {where(email: "rahul@grmail.com").pluck(:email)}   # first email is table column name, second one is object attribute model name (tableColumn: ObjectAttribute) 

    # parameterised scope. This is the parameter here -> "(customer_ids)"  
    scope :blacklisted_customers, ->(customer_ids) { where(id: customer_ids) }

=begin 
    def check_email
        # check email present or not
        if @user.email.present?
            p "Present"
        else
            p "No Email"
    end
    def check_name
        # check name has only alphabetic values
        if @user.name.present?
            p "name present"
        else
            p "end"
    end
=end
end
