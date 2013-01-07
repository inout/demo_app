class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :user_name, :email, :password, :password_confirmation, :remember_me

  # Setup accessible (or protected) attributes for your model  
  attr_accessible :birth_date, :first_name, :last_name, :user_name, :mobile, :phone, :is_active, :joining_date  
  has_many :leaves
end
