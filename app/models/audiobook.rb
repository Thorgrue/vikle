class Audiobook < ApplicationRecord
  has_one_attached :photo
  has_one_attached :audio
end
