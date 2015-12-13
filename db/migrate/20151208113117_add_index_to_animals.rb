class AddIndexToAnimals < ActiveRecord::Migration
  def change
    add_reference :animals, :shelter
  end
end
