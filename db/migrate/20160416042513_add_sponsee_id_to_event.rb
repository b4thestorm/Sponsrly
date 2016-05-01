class AddSponseeIdToEvent < ActiveRecord::Migration
  def change
   add_column :events, :sponsee_id, :integer
  end
end
