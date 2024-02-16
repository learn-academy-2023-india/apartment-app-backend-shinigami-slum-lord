class Apartment < ApplicationRecord
  belongs_to :user
  validates :street, presence: true
  validates :state, presence: true
  validates :city, presence: true
  validates :pets, presence: true
  validates :unit, presence: true
  validates :square_footage, presence: true
  validates :price, presence: true
  validates :bedrooms, presence: true
  validates :bathrooms, presence: true
end
