class Shelter < ActiveRecord::Base
  has_many :animals

  # before_validation :format_values

  # def format_values
  #   self[:name] = self[:name].downcase if self[:name].present?
  #   self[:location] = self[:location].downcase if self[:location].present?
  # end

  validates :name, presence: true
  validates :location, presence: true

  validates :location, inclusion: {in: ['Hong Kong', 'Kowloon', 'New Territories']}
end
