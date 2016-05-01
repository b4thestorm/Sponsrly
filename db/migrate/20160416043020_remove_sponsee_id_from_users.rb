class RemoveSponseeIdFromUsers < ActiveRecord::Migration
  def change
  remove_column :users, :sponsee_id
  end
end
