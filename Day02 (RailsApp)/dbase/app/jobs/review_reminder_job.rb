class ReviewReminderJob < ApplicationJob
  queue_as :default

  # Day 25 this file is generate using command and modified
  def perform(customer1_id)
    # Day 25
    customer = Customer1.find(customer1_id)
    Customer1Mailer.review_email(customer).deliver
  end

  
end
