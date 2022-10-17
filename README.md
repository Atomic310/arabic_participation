Introduction: 
Arabic Participation tracker was built to track Arabic Club event, member and officer data. Club officers will be able to see information about events such as location, cost, attendance and rate the events. Also included is the ability to sort and view past events to see which ones were successful. For member data, officers will be able to view information such as who has or hasn’t payed dues, and which events they have attended. To back up and save data, download of event and member data is available.  

Requirements
This code has been run and tested on: 

Ruby - 3.0.2p107
Rails - 6.1.4.1
Ruby Gems - Listed in Gemfile
PostgreSQL - 13.3
Nodejs - v16.9.1
Yarn - 1.22.11

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

cd arabic_participation

docker run --rm -it --volume "$(pwd):/rails_app" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest

cd rails_app

Install the app

bundle install && rails webpacker:install && rails db:create && db:migrate

Run the app rails server --binding:0.0.0.0

The application can be seen using a browser and navigating to http://localhost:3000/

Environmental Variables/Files:
N/A

Deployment: 
Create a pipeline on heroku.com
Link pipline to github repo containing the code for application (https://github.com/Ticthach/arabic_participation.git)
Select branch that will auto update the application
Deploy the application to heroku and a link will be produced 


CI/CD
TBD

Support
Admins looking for support should first look at the application help page. There is an FAQ file available as well as a feedback form to communicate any comments and concerns.
Users looking for help seek out assistance from the customer.

