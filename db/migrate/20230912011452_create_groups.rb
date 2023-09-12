class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.integer :repeats, null: false, default: 0
      t.float :rest_time, null: false, default: 0
      t.belongs_to :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
