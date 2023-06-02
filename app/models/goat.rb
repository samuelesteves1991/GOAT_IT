class Goat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  validates :name, presence: true
  has_one_attached :photo
end
