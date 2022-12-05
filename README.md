Introduction: 
Arabic Participation tracker was built to track Arabic Club event, member and officer data. Club officers will be able to see information about events such as location, cost, attendance and rate the events. Also included is the ability to sort and view past events to see which ones were successful. For member data, officers will be able to view information such as who has or hasn’t payed dues, and which events they have attended. To back up and save data, download of event data is available.  

Requirements
This code has been run and tested on: 

Ruby - 3.0.2p107
Rails - 6.1.4.1
Ruby Gems - Listed in Gemfile
PostgreSQL - 13.3
Nodejs - v16.9.1
Yarn - 1.22.11

Environment
Ubuntu vDebian 11
Docker Engine v20.10.17
Docker container v1.6.6
Heroku
Others

Program
Ruby v3.0.2
Rails v6.1.4.1
Rspec-rails v5.0.2
PostgreSQL v13.3
Other gems & versions
devise 4.8.1
rubyzip 1.2.1
axlsx, git: https://github.com/randym/axlsx.git, ref: c8ac844
Axlsx_rails
pg v1.1
puma v5.0
webpacker v5.0
turbolinks v5
sass-rails v6
jbuilder v2.7
redis v4.0
bcrypt v3.1.7
image_processing v1.2
bootsnap v1.4.4
byebug, platforms: [:mri, :mingw, :x64_mingw]
web-console v4.1.0
rack-mini-profiler v2.0
listen v3.3
spring
capybara v3.26
selenium-webdriver
webdrivers
tzinfo-data, platforms: [:mingw, :mswin, :x64_mingw, :jruby]
rspec v3.10

Tools
Git Hub
RuboCop v1.39
Simplecov v0.12
Brakeman v5.4
Jira
Others

Document
Data Design v3 
UX Design v1
User’s Manual
Others

Data
Test Data v1


External Deps
Docker - Download latest version at https://www.docker.com/products/docker-desktop
Heroku CLI - Download latest version at https://devcenter.heroku.com/articles/heroku-cli
Git - Download latest version at https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

Installation
Download this code repository by using git:

git clone https://github.com/Ticthach/arabic_participation.git

Tests
An RSpec test suite is available and can be ran using:

rspec spec/

Execute Code
Run the following code in Powershell if using windows or the terminal using Linux/Mac

"cd arabic_participation"

Run docker image "docker run --rm -it --volume "$(pwd):/rails_app" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest"

Navigate to app "cd rails_app"

Install the app "bundle install && rails webpacker:install && rails db:create && db:migrate"

Run the app "rails server --binding=0.0.0.0"

The application can be seen using a browser and navigating to http://localhost:3000/

Environmental Variables/Files:
N/A

Deployment: 
Create a pipeline on heroku.com
Link pipline to github repo containing the code for application (https://github.com/Ticthach/arabic_participation.git)
Select branch that will auto update the application
Deploy the application to heroku and a link will be produced 

Credit:
Sort Function: http://railscasts.com/episodes/228-sortable-table-columns?view=asciicast
Search Function: https://medium.com/@ozhorov/how-to-implement-search-feature-in-rails-and-search-across-multiple-tables-f80b7a3825bb
Export Function: https://medium.com/@JasonCodes/ruby-on-rails-exporting-data-to-excel-b3b204281085

CI/CD
CI:
CD: 
Github actions: 

Support
Admins looking for support should can fill out the feedback form on the homepage to communicate any comments and concerns. There is documention that has been passed to the client contianing a guide to the web app which provides support for admins and non admins. Helpful examples have been included in the website front end to give users an idea of how to use the web app and specifically what should be inputed for some forms. 

Users looking for help seek out assistance from the customer who has been trained in using the web app and has helpful documentation.

