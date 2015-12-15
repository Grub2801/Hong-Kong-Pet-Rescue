class AddAttachmentAvatarToAnimals < ActiveRecord::Migration
  def self.up
    change_table :animals do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :animals, :avatar
  end
end
