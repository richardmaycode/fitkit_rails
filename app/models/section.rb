class Section < ApplicationRecord
  DEFAULT_NAMES = %W(warmup, cardio, main, cooldown)

  has_many :groups
  has_many :blocks, through: :groups
end
