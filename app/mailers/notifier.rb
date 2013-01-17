class Notifier < ActionMailer::Base
  def support_notification(user)
    @user = user
    mail(:to => "rohit19kadam@gmail.com",
         :from =>"\"#{@user.first_name} #{@user.last_name}\" #{GlobalConstant::EMAIL}",   
         :subject => "Leave request ")
  end 
end 
