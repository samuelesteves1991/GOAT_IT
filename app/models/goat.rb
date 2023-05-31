class Goat < ApplicationRecord
  belongs_to :user, dependent: :destroy
  validates :name, presence: true
  has_one_attached :photo
end
