class AddAttachmentReceiptToFridges < ActiveRecord::Migration
  def self.up
    change_table :fridges do |t|
      t.attachment :receipt
    end
  end

  def self.down
    drop_attached_file :fridges, :receipt
  end
end
