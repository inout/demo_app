class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :user_name, :email, :password, :password_confirmation, :remember_me

  # Setup accessible (or protected) attributes for your model
  attr_accessible :birth_date, :first_name, :last_name, :user_name, :contact_no, :is_active, :joining_date
  has_many :leave
  has_and_belongs_to_many :roles
  has_and_belongs_to_many :teams

  def role?(role)
    return self.roles
  end

  def send_email(user, request_hash)
      Notifier.support_notification(user, request_hash).deliver!
      return true
  end
end
