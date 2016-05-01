class DropEventHost < ActiveRecord::Migration
  def change
   drop_table :event_hosts
  end
end
