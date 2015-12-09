class Animal < ActiveRecord::Base
  belongs_to :shelter

  validates :name, presence: true

  validates :specie, inclusion: {in: ['Any', 'Cat', 'Dog', 'Reptile & Fish', 'Rabbit', 'Rodent']}
  validates :age, inclusion: {in: ['Unknown', 'Baby', 'Young', 'Adult', 'Senior']}
  validates :size, inclusion: {in: ['Small', 'Medium', 'Large']}
  validates :sex, inclusion: {in: ['Unknown', 'Male', 'Female']}
end
