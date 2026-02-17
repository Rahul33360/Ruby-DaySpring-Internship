class Customer1Mailer < ApplicationMailer
    # Day15
    def welcome_email
        @customer1 = params[:customer1]
        mail(to:@customer1.email , subject:"welcome bro")
    end

    # Day 25
    def review_email(customer1)
        @customer1 = customer1
        mail(to:@customer1.email , subject:"Review Email working")
    end
end
