class Dose < ApplicationRecord
  belongs_to :coctail
  belongs_to :ingredient

  validates :description, presence: true
  validates :coctail, uniqueness: true, presence: true
  validates :ingredient, presence: true
end
