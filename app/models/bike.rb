class Bike < ApplicationRecord
  belongs_to :user
  has_many :reviews
  validates :title, presence: true
  validates :price, presence: true
end
