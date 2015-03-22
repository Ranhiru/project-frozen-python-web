Project Frozen Python Web
=========================

This is the web application for *Project Frozen Python* built with Ruby on Rails 4. HAML is preferred over ERB over here and of course CoffeeScript to go along...

Models and accompanied validations are completed.

Hosted on Heroku : https://frozen-python.herokuapp.com/

CI is running on Travis : ![Build Status](https://travis-ci.org/Ranhiru/project-frozen-python-web.svg?branch=master "Build Status")

Testing is done using *rspec*

A few interesting gems have being used to aid in testing (Thanks thoughtbot!)

* shoulda-matchers
* faker
* factory_girl_rails
* database_cleaner

Planned
* Feature tests would be running with capybara + selenium
* UI -> bootstrap 3
* Auth: omniauth + omniauth-facebook 


