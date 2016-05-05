class AddColumnsToEvents < ActiveRecord::Migration
  def change
   add_column :events, :start_time, :datetime
   add_column :events, :event_date,  :datetime
  end
end
