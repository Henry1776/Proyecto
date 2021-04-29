class Picture < ApplicationRecord
  attr_accessor :address
  belongs_to :user
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode

end
