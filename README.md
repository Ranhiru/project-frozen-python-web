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

*****Done**

* Feature tests are running using capybara and selenium. More features tests would be added along the way...
* Authentication added using omniauth and facebook

**Planned**

* Work on UI has started. Planning on using bootstrap with backbone router + JST templates. Lot's to learn!


