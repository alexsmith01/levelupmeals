class AddAttachmentPartnershipAgreementToDeliveryLocations < ActiveRecord::Migration
  def self.up
    change_table :delivery_locations do |t|
      t.attachment :partnership_agreement
    end
  end

  def self.down
    drop_attached_file :delivery_locations, :partnership_agreement
  end
end
