class FormMailer < ApplicationMailer
  def completed_form(user, buyer)
    @user=user
    @buyer = buyer
    mail(to: @user.email, subject: 'Here is your completed Title Record form')
  end
end
