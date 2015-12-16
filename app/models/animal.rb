class Animal < ActiveRecord::Base
  belongs_to :shelter
  has_many :users, through: :favorites
  has_many :favorites

  has_attached_file :avatar,
                    styles: { medium: "300x300>", thumb: "100x100>" },
                    default_url: "pet.jpg"

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  validates :name,   presence: true
  validates :specie, inclusion: {in: [nil ,'any', 'cat', 'dog', 'reptile & fish', 'rabbit', 'rodent']}
  validates :age,    inclusion: {in: [nil, 'baby', 'young', 'adult', 'senior']}
  validates :size,   inclusion: {in: [nil, 'small', 'medium', 'large']}
  validates :sex,    inclusion: {in: [nil, 'male', 'female']}
end
