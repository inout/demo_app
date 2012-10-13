class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :ldap_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :user_name, :email, :password, :password_confirmation, :remember_me

  # Setup accessible (or protected) attributes for your model  
  attr_accessible :birth_date, :first_name, :last_name, :user_name, :mobile, :phone, :is_active, :joining_date  
  has_many :leave, :inverse_of => :user, :dependent => :destroy
  
  before_save :get_ldap_first_name, :get_ldap_last_name, :get_ldap_email

  def get_ldap_email
    self.email = Devise::LdapAdapter.get_ldap_param(self.user_name,"mail")
  end

  def get_ldap_first_name
    self.first_name = Devise::LdapAdapter.get_ldap_param(self.user_name,"givenname")
  end

  def get_ldap_last_name
    self.last_name = Devise::LdapAdapter.get_ldap_param(self.user_name,"sn")
  end

end
