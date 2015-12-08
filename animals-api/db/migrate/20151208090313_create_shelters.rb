class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :password_digest
      t.string :address
      t.string :phone
      t.string :email
      t.string :website
      t.string :donation_info
      t.string :description
      t.string :image_url
      t.string :location
      t.timestamps null: false
    end
  end
end
