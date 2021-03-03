class Audiobook < ApplicationRecord
  has_one_attached :photo
  has_one_attached :audio

  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates :title, presence: true, length: { maximum: 45, minimum: 2 }
  validates :author, presence: true, length: { maximum: 20, minimum: 2 }
  validates :duration, presence: true
  validates :description, presence: true, length: { maximum: 400 }

  def average_rating
    if reviews.count == 0
      return 0
    else
    nbreviews = 0
    sum = 0
    reviews.each do |review|
      sum += review.rating
      nbreviews += 1
    end
      sum.fdiv(nbreviews).round(1) unless nbreviews.zero?
    end
  end
end
