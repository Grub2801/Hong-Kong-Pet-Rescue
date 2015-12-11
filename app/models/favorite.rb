class Favorite < ActiveRecord::Base
  # belongs_to :user
  belongs_to :animal

  # validates :user_id, presence: true
  # validates :animal_id, presence: true, uniqueness: true


  # def relationship_uniqueness
  #   user_id = current_user.id
  #   animal_id = params[:favorite]
  #   existing_record = Favorite.find(:first, :conditions => ["user_id = ? AND animal_id = ?", user_id, animal_id])
  #   unless existing_record.blank?
  #     errors.add(:user_id, "has already been saved for this relationship")
  #     errors.add(:animal_id, "has already been saved for this relationship")
  #   end
  # end
end
