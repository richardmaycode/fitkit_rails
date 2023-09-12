class CreateBlocks < ActiveRecord::Migration[7.0]
  def change
    create_table :blocks do |t|
      t.integer :block_type, null: false, default: 0
      t.text :comments, null: true
      t.belongs_to :groups, null: false, foreign_key: true

      t.timestamps
    end
  end
end
