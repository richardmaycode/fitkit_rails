class Exercise < ApplicationRecord
    enum :category, %i(lifting cardio stretching), prefix: true
    enum :difficulty, %i(beginner intermediate advanced), prefix: true

    validates :name, presence: true
end
