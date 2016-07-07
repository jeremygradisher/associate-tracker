# Greeby Associate Tracker - Main Branch
----------------------------------------

Overall this project is complete. There are a couple of outstanding items:

-Within the Associates model there is a HABTM association with working_locations - within _form.html.erb it needs checkboxes replaced with tag-it and jQuery auto-complete or some equivelant.

-Projects index search - multiselect status - he wants "Prospect" and "In Process" checked and "Complete" unchecked by default. Currently they are all represented on the map and with search you can select just one such as "Prospect" to narrow it down.

-Piechart colors need to match Projects colors on status - Prospect/blue, In Process/orange and Complete/pink

-Carrierwave validation error kicks you to the 422 page as opposed to showing on the form and saying what the error is.

-After sign up, if home page is protected message "Check your email for confirmation" is overidden by "you must sign-in or sign-up to continue"



# If cloning this realize a couple of things:
-------------------------------------------

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



