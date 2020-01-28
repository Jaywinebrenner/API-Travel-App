class Destination < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :country, presence: true
  validates :city, presence: true
  scope :country_search, -> (country_parameter) { where("country like ?", "%#{country_parameter}%")}

end
