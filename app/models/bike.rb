class Bike < ApplicationRecord
  belongs_to :user
  # validates :title, presence: true
  # validates :price, presence: true
  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_address_and_price,
    against: [ :address, :price ],
    using: {
      tsearch: { prefix: true }
    }
end
