class Audiobook < ApplicationRecord
  has_one_attached :photo
  has_one_attached :audio

  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates :title, presence: true, length: { maximum: 45, minimum: 2 }
  validates :author, presence: true, length: { maximum: 20, minimum: 2 }
  validates :duration, presence: true
  validates :description, presence: true, length: { maximum: 400 }
end
