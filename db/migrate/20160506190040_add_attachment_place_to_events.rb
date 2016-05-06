class AddAttachmentPlaceToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :place
    end
  end

  def self.down
    remove_attachment :events, :place
  end
end
