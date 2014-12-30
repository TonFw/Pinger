class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, # SIGN_UP FORBIDDEN :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Associations
  has_many :targets
end
