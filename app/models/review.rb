class Review < ApplicationRecord
  belongs_to :audiobook
  belongs_to :user

  validates :comment, presence: true, length: { minimum: 5, maximum: 50 }
  validates :rating, presence: true,  numericality: true
end
