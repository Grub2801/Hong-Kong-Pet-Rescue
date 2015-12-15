class AddImageToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :image, :string
  end
end
