class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :instructions
      t.integer :difficulty
      t.integer :category

      t.timestamps
    end
  end
end
