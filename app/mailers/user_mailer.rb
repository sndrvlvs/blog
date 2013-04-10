class UserMailer < ActionMailer::Base
  default from: "blog@blog.com"

  def send_email(comment, email)
  	@comment = comment

  	mail(:to => email, :subject => comment.commenter, :body => comment.body)

  end
end
