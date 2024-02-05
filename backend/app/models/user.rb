class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # validates :email, presence:true, uniqueness:true, format:{with:URI::MailTo::EMAIL_REGEXP}
  # validates :password, presence:true, length: {minimum:8}
  devise :database_authenticatable, :registerable,
        :recoverable, :validatable, :confirmable,
        # :rememberable,
        :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist
end
