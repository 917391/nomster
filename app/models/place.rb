class Place < ApplicationRecord
    belongs_to :user
    geocoded_by :address
    after_validation :geocode
    validates :name, length: {minimum: 2}
    validates :description, presence: true
    validates :address, presence: true
end
