class AddSponseeToUser < ActiveRecord::Migration
  def change
    add_column :users, :sponsee_id, :integer
  end
end
