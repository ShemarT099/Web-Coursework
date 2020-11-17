class ApplicationMailer < ActionMailer::Base
  default to: "info@mywebsite.com", from: 'info@mywebsite.com'
  layout 'mailer'
end
