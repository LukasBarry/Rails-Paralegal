class FormMailer < ApplicationMailer
  def completed_form(user)
    @user=user
    mail(to: @user.email, subject: 'Here is your completed Title Record form')
  end
end
