class Block < ApplicationRecord
  enum :block_type, %i(single superset triset choice)

  belongs_to :groups
  has_many :activities
end
