#!/usr/bin/env ruby

system 'git push heroku master'
system 'heroku run rake db:migrate'