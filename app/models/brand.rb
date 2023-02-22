class Brand < ApplicationRecord
    has_many :car,dependent: :destroy
end
