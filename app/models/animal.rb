class Animal < ActiveRecord::Base
  has_many :favorites
  belongs_to :shelter
  has_many :users, through: :favorites

  validates :name, presence: true

  validates :specie, inclusion: {in: ['any', 'cat', 'dog', 'reptile & fish', 'rabbit', 'rodent']}
  validates :age, inclusion: {in: ['unknown', 'baby', 'young', 'adult', 'senior']}
  validates :size, inclusion: {in: ['small', 'medium', 'large']}
  validates :sex, inclusion: {in: ['unknown', 'male', 'female']}
end