class Investor < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :dob, presence: true
  validates :phone_number, presence: true
  validates :street_address, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true

  has_one_attached :photo_identification
end
