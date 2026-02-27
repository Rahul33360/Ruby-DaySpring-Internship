class Address < ApplicationRecord
    belongs_to :customer1
    belongs_to :order, optional: true
end
