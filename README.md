# README

Welcome to Legacy Sales Summary web app.


* About the app:

This app was created as a database website to help track sales man performance in the company. It allows unique and controlled user identification and provides different views according to the position (role) inside the company. It also creates a summary of sales to understand the profibitlity of both the employees and the company as a whole.

This web app was developed using ruby on rails. Further Works needs to be done to improve performance and aesthetics.

* Ruby version:

        ruby 2.6.1p33 (2019-01-30 revision 66950) [x86_64-darwin19]

* System dependencies:

Please refer to the Gemfile file inside the LegacySalesSummary folder

* Configuration:

If you cant run the app as is, make sure to turn false the check_yarn_integrity inside the config/webpacker.yml.
As shown by the error:

        "Your Yarn packages are out of date!
        Please run `yarn install --check-files` to update."
  
        To disable this check, please change `check_yarn_integrity`
        to `false` in your webpacker config file (config/webpacker.yml).

And then erase line 9 from app/views/layouts/application.html.erb that has the following:

        <%= javascript_pack_tag 'application', 'data-turbolinks-track': 'reload' %>

To allow the app to finally render.


* Database creation/initialization:

Before starting the server make sure to run $rails db:migrate RAILS_ENV=development and $rake db:seed to add the months for the week creationg page







