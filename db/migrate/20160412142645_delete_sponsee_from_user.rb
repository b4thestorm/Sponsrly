class DeleteSponseeFromUser < ActiveRecord::Migration
  def change
  remove_column :users, :sponsee_id
  end
end
