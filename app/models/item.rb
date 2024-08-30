class Item < ApplicationRecord
  belongs_to :character
  validates :name, presence: true, length: { minimum: 3 }
end
