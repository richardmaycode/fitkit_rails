class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :name, null: false
      t.text :instructions
      t.integer :difficulty, null: false
      t.integer :category, null: false

      t.timestamps
    end
  end
end
