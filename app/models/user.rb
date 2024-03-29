class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.edu\z/i
 validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

def admin?
    admin
end

end
