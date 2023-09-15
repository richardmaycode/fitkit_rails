class CreateRoutines < ActiveRecord::Migration[7.0]
  def change
    create_table :routines do |t|
      t.string :name
      t.text :summary
      t.integer :status

      t.belongs_to :plan, null: true, foreign_key: true

      t.timestamps
    end
  end
end
