class Destination < ApplicationRecord

  validates :country, presence: true
  validates :city, presence: true

  scope :search, -> (country_parameter) { where("country like ?", "%#{country_parameter}%")}
end
