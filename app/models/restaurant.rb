class Restaurant < ApplicationRecord
  validates :name, :address, :phone_number, :category, presence: true
  validates :category, inclusion: { in: ['Chinese', 'Italian', 'Japanese', 'French', 'Belgian'] }
  has_many :reviews, dependent: :destroy
end
