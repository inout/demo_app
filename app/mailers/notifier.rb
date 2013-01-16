class Notifier < ActionMailer::Base
  def support_notification
    mail(:to => "inoutdemo123@gmail.com", 
         :from => "inoutdemo123@gmail.com", # Created demo gmail account for sending email
         :subject => "Leave request ")
  end 
end 
