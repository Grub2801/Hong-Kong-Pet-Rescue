class AddAttachmentAvatarToAnimals < ActiveRecord::Migration
  def change
    add_attachment :animals, :avatar
  end
end
