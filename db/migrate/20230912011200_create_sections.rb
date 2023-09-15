class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      t.string :name, null: false
      t.text :comments, null: true
      t.integer :section_index, null: false, default: 0

      t.belongs_to :routine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
