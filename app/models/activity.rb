class Activity < ApplicationRecord
  belongs_to :block
  belongs_to :exercise
  has_many :repetitions, dependent: :destory
end
