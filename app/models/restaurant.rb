class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :phone_number, presence: true
  validates :name, :address, :phone_number, :category, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian) }
end
