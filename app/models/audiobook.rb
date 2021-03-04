class Audiobook < ApplicationRecord
  has_one_attached :photo
  has_one_attached :audio

  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :title, presence: true, length: { maximum: 45, minimum: 2 }
  validates :author, presence: true, length: { maximum: 20, minimum: 2 }
  validates :duration, presence: true
  validates :description, presence: true, length: { maximum: 400 }

  def average_rating
    return 0 if reviews.count.zero?

    sum = 0
    reviews.each do |review|
      sum += review.rating
    end
    sum.fdiv(reviews.count).round(1)
  end
end
