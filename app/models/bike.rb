class Bike < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :price, presence: true
  has_many_attached :photos
end
