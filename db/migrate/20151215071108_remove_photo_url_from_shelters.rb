class RemovePhotoUrlFromAnimals < ActiveRecord::Migration
  def change
    remove_column :animals, :photo_url
  end
end
