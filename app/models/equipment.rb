class Equipment < ApplicationRecord
    has_and_belongs_to_many :exercises
    validates_presence_of :name
end
