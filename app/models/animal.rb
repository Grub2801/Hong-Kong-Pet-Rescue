class Animal < ActiveRecord::Base
  belongs_to :shelter
  has_many :users, through: :favorites
  has_many :favorites

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "dog.png", s3_permissions: private

  validates_attachment_content_type :avatar, content_type: ["image/jpeg", "image/png"]
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/


  validates :name, presence: true
  validates :specie, inclusion: {in: ['any', 'cat', 'dog', 'reptile & fish', 'rabbit', 'rodent']}
  validates :age, inclusion: {in: ['unknown', 'baby', 'young', 'adult', 'senior']}
  validates :size, inclusion: {in: ['small', 'medium', 'large']}
  validates :sex, inclusion: {in: ['unknown', 'male', 'female']}
end