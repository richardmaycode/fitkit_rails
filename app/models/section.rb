class Section < ApplicationRecord
    has_many :groups
    has_many :blocks, through: :groups
end
