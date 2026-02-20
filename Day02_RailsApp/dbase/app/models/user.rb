class User < ApplicationRecord
    # Day19
    has_one :vendor, dependent: :destroy
end