class Notifier < ActionMailer::Base
  def support_notification(user, request_hash)
    @user = user
    @request_hash = request_hash  
    
    mail(:to => "rohit19kadam@gmail.com",
         :from =>"\"#{@user.first_name} #{@user.last_name}\" #{GlobalConstant::EMAIL}",   
         :subject => "Leave request ")
  end 
end 
