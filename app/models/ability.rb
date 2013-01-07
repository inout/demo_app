class Ability
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user    
 
    if user.role? "ADMIN"
      can :manage, :all
    elsif user.role? "MANAGER"
      can :manage, :all
    elsif user.role? "HR"
      can [:read, :create, :update], :all
    else user.role? "EMPLOYEE"
      can [:read], :all
    end    
  end
end