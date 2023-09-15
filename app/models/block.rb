class Block < ApplicationRecord
  enum :block_type, %i(single superset triset choice)

  belongs_to :group
  has_many :activities, dependent: :destroy
  has_many :exercises, through: :activities

  def max_activities
    case block_type.to_sym
    when :single
      return 1
    when :superset
      return 2
    when :triset
      return 3
    when :choice
      return 2
    end
  end
end
