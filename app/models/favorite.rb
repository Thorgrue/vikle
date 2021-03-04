class Favorite < ApplicationRecord
  belongs_to :audiobook
  belongs_to :user
end
