class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  validates :username, presence: true, uniqueness: true, length: { in: 3..20 }
  validates :phone, presence: true, length: { in: 8..30 }
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :real_estates
  has_one_attached :avatar
end
