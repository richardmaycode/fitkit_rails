class Activity < ApplicationRecord
  belongs_to :blocks
  has_many :repetitions
end
