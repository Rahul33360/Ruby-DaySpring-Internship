class Tag < ApplicationRecord
    # Day20
    has_and_belongs_to_many :product1s
end
