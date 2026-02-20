class Offer < ApplicationRecord
    # Day20 dependent: :destroy -> removes child record if parent record removed
    # has_many :Product1s, through: :product1s_offers , dependent: :destroy

    # Day22
    #  many to many
    has_many :subscriptions
    has_many :product1s, through: :subscriptions
end
