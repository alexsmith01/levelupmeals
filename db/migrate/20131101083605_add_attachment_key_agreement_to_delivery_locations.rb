class AddAttachmentKeyAgreementToDeliveryLocations < ActiveRecord::Migration
  def self.up
    change_table :delivery_locations do |t|
      t.attachment :key_agreement
    end
  end

  def self.down
    drop_attached_file :delivery_locations, :key_agreement
  end
end
