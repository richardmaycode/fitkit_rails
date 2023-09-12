class CreateRepetitions < ActiveRecord::Migration[7.0]
  def change
    create_table :repetitions do |t|
      t.float :amount, null: false
      t.float :weight, null: true
      t.float :speed, null: true
      t.float :resistance, null: true
      t.float :incline, null: true
      t.boolean :to_failure, null: false, default: false
      t.belongs_to :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
