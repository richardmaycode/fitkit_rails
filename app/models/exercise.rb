class Exercise < ApplicationRecord
    enum :category, %i(lifting cardio stretching), prefix: true
    enum :difficulty, %i(beginner intermediate advanced), prefix: true

    has_and_belongs_to_many :muscles
    has_and_belongs_to_many :equipment

    validates :name, presence: true
    validates :instructions, presence: true
    validates :category, presence: true
    validates :difficulty, presence: true

    def self.get_categories
        categories.keys.map(&:to_str).map(&:capitalize)
    end

    def get_muscles
        muscles.pluck(:name).map(&:capitalize)
    end
end
