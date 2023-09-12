class CreateEquipmentExercises < ActiveRecord::Migration[7.0]
  def change
      create_table :equipment_exercises do |t|
        t.belongs_to :equipment, null: false, foreign_key: true
        t.belongs_to :exercise, null: false, foreign_key: true

        t.timestamps
      end
  end
end
