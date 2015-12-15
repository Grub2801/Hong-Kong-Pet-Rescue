class Shelter < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable
  include DeviseTokenAuth::Concerns::User

  has_many :animals

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "dog.png", s3_permissions: private

  validates_attachment_content_type :avatar, content_type: ["image/jpeg", "image/png"]
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  before_validation :format_values

  def format_values
    self[:name] = self[:name].downcase if self[:name].present?
    self[:location] = self[:location].downcase if self[:location].present?
  end

  validates :name, presence: true
  validates :location, presence: true, inclusion: {in: ['hong kong', 'kowloon', 'new territories']}
end
