class Users::RegistrationsController < Devise::RegistrationsController  
  skip_before_filter :require_no_authentication
 
  def check_permissions
    authorize! :create, resource
  end
  
  def create
    puts "++++++++++++++++++++++++++++"
    puts "in function create"
    puts "++++++++++++++++++++++++++++"
    
    if(params[:record])
      User.transaction do
        u = User.new
        u.email = params[:record][:email]
        u.first_name = params[:record][:first_name]
        u.last_name = params[:record][:last_name]
        u.is_active = params[:record][:is_active]
        u.mobile = params[:record][:mobile]
        u.phone = params[:record][:phone]
        u.user_name = params[:record][:user_name]         
        u.is_active = params[:record][:is_active]
        u.birth_date = params[:record][:birth_date]
        u.joining_date = params[:record][:joining_date]        
        u.last_sign_in_at = params[:record][:last_sign_in_at]
        u.last_sign_in_ip = params[:record][:last_sign_in_ip]
        u.remember_created_at = params[:record][:remember_created_at]
        u.password = params[:record][:encrypted_password]
        u.reset_password_sent_at =  DateTime.current
        u.reset_password_token = User.reset_password_token
        u.save!
      end
      
      redirect_to "/users"
    end
        
    if(params[:user]) #When user is going to sign_up
        puts "In else"
        User.transaction do
          u = User.new
          u.email = params[:user][:email]   
          u.password = params[:user][:password]       
          u.password_confirmation = params[:user][:password_confirmation]
          u.reset_password_sent_at =  DateTime.current
          u.reset_password_token = User.reset_password_token
          u.save
        end
        redirect_to "/"
    end
  end
    
end