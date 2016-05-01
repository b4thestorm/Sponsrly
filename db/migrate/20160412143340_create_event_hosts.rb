class CreateEventHosts < ActiveRecord::Migration
  def change
    create_table :event_hosts do |t|
      t.integer :sponsee_id, index: true, foreign_key: true
      t.integer :sponsor_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
