class User < ApplicationRecord
  # respond_to :json
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable, :confirmable,
         # :rememberable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  has_many :courses
end
