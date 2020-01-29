class Destination < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :country, presence: true
  validates :city, presence: true
  scope :search, -> (search) { where("city ilike :search OR country ilike :search", search: "%#{search}%")}

end
