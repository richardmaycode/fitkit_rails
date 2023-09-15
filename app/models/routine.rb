class Routine < ApplicationRecord
  belongs_to :plan, optional: true
  has_many :sections, dependent: :destroy
end
