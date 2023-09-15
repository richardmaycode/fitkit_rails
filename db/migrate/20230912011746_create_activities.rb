class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.text :comments, null: true
      t.integer :targetHeartRateZone
      t.float :rest_time

      t.belongs_to :block, null: false, foreign_key: true
      t.belongs_to :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
