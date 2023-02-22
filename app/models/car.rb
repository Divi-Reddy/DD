class Car < ApplicationRecord
  belongs_to :brand 
  has_many :variant,dependent: :destroy
end
