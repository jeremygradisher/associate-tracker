# Associate Tracker - Main Branch

Associate Tracker (Ruby on Rails SaaS app) to track leasing representatives 
for development projects. Devise user auth. Leaflet.js for mapping.


# If cloning this realize a couple of things:

-it's using sqlite3 in development and PostgreSQL in production (gemfile)

-it's using sendgrid for sign-up email confirmations (.baschrc)<br>
export SENDGRID_USERNAME=xxxxxxxxxx<br>
export SENDGRID_PASSWORD=xxxxxxxxxx

-send grid port (config/environment.rb) :port => '587' for heroku sign-ups :port => '2587' for Cloud9 sign-ups

-it uses AWS for file storage - just needs an S3 bucket and credentials<br>
$ heroku config:set S3_ACCESS_KEY=xxxxxxxxxxxxxxxxxx<br>
$ heroku config:set S3_SECRET_KEY=xxxxxxxxxxxxxxxxxx<br>
$ heroku config:set S3_BUCKET=xxxxxxxxxxxxxxxxxx

-config/environments/development.rb and production has something that needs to be addressed:

development:<br>
config.action_mailer.default_url_options = { :host => 'hxxp://greeby-associate-tracker-jxxxxxxxxxxxer.c9users.io'}

production:<br>
config.action_mailer.default_url_options = { :host => 'greeby-associate-tracker.herokuapp.com', :protocol => 'https'}
  
-config/initializers/devise.rb - where the email notifications are coming from:<br>
config.mailer_sender = 'no-reply@workshop-mg.com'



