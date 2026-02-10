class Order < ApplicationRecord
    #  Day17 (adding references/foreignKey)
    # has_many :product1s, foreign_key :product1s.id
    # Day19
    belongs_to :product1

    # Day22
    has_one :customer

end
