class Product1Mailer < ApplicationMailer
    # Day15
    def welcome_email
        @product1 = params[:product1]
        mail(to:@product1.email , subject:"Good Product")
    end
end
