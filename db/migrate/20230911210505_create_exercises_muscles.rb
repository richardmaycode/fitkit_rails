class CreateExercisesMuscles < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises_muscles do |t|
      t.belongs_to :exercise, null: false, foreign_key: true
      t.belongs_to :muscle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
