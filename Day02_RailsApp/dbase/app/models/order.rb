class Order < ApplicationRecord
    # Day 25
    after_create_commit :scheduler_review_reminder

    #  Day17 (adding references/foreignKey)
    # has_many :product1s, foreign_key :product1s.id
    # Day19
    belongs_to :product1
    belongs_to :customer1 
    has_one :address, through: :customer1

    # Day22
    # has_one :customer

    # has_one :address, through: :customer1
    # belongs_to :customer1

    # Day 25 below example for Active Jobs
    def scheduler_review_reminder
        ReviewReminderJob.set(wait: 15.seconds).perform_later(customer1_id)
    end

end
