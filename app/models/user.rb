class User < ActiveRecord::Base
  has_many :favorites
  has_many :animals, through: :favorites
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable
  include DeviseTokenAuth::Concerns::User
end
