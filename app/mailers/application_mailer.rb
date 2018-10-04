class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials[Rails.env.to_sym][:mailer_username]
  layout "mailer"
end
