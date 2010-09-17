#ActionMailer::Base.smtp_settings = {
#  :address              => "smtp.gmail.com",
#  :port                 => 587,
#  :domain               => "",
#  :user_name            => "",
#  :password             => "",
#  :authentication       => "plain",
#  :enable_starttls_auto => true
#}
ActionMailer::Base.smtp_settings = {
  :address => "smtp.sendgrid.net",
  :port => 587,
  :domain => "",
  :authentication => :plain,
  :user_name => "",
  :password => "",
  :enable_starttls_auto => true

}
ActionMailer::Base.default_url_options[:host] = "iitb.heroku.com"
