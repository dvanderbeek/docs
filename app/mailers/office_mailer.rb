class OfficeMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.office_mailer.new_review.subject
  #
  def new_review(doctor, email)
    @doctor = doctor
    @email = email

    mail to: "review@pavomd.com", 
         from: email,
         subject: "New Doctor Review!"
  end
end
