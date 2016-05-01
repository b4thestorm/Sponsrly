class CreateSponsorships < ActiveRecord::Migration
  def change
    create_table :sponsorships do |t|
      t.integer :sponsee_id
      t.integer :sponsor_id

      t.timestamps null: false
    end
  end
end
