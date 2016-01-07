class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :animal

  validates :animal_id, uniqueness: { scope: :user_id,
    message: "you can only favorite an animal once" }
end
