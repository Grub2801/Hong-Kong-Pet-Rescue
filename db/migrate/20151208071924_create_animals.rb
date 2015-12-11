class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :specie
      t.string :color
      t.string :breed
      t.string :age
      t.string :size
      t.string :sex
      t.string :name
      t.string :note
      t.string :photo_url

      t.timestamps null: false
    end
  end
end
