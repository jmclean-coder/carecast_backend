# About CareCast

CareCast is self-care and enrichment web application featuring a soothing, mobile first design. My motivation to create this app is stems from my experiences learning to level up my self-care skills, particularly in regard to Emotional Granularity. You can read more about Emotional Granularity at [this Wikipedia page](https://en.wikipedia.org/wiki/Emotional_granularity) and [this Psychology Today article](https://www.psychologytoday.com/us/blog/the-mindful-self-express/201906/master-your-feelings-new-tools-inspired-neuroscience).

The backend of the application leverages Ruby on Rails API functionality to receive and send AJAX requests in a JSON format. The interactive frontend is built with ReactJS and styled with React Bootstrap for a responsive design.

---

## Features

Currently, users of CareCast can:

* Track self-care activities:
  * Hours of sleep
  * Glasses of water

* Rate themselves on how they feel about their:
  * Energy
  * Productivity
  * Motivation
  * Stress

* Keep a daily Journal and Todo List
* Chose from a list of over 200 granular feelings, group by categories of parent feelings, based on a users' needs being "met" or "unmet."

* View visualizations of their inputed data.
* Recieve inspirational quotes on a daily basis.

---

## Front End Dependencies:
Refer to the [carecast_client repository](https://github.com/jmclean-coder/MovieShelfFE)  for instructions to set up the frontend interface and ReactJS

## Dependencies:
* Developed on Google Chrome (80.0.3987.149)
* Ruby (v2.6.1)
* RAILS (v6.0.2.2)
* Bundler (v2.1.4)
* PostgreSQL (v12.3)

---

## Backend Installation

For this guide, a MacOSX environment is assumed.

If you have the above dependencies:
<br />
- Fork and clone this repository to your desired install directory. 
- Navigate to that directory and open it in your code editor
- In your terminal, run `bundle install` to install all required ruby   gem packages.

<br />

If you don't have the above dependencies:
<br />

- Install [Ruby Version Manager](https://rvm.io/rvm/install) for easy installing/updating of Ruby 2.6.1
- Install [Bundler](https://bundler.io/) to manage your Ruby gems
- To install Rails, run `gem install rails -v 6.0.2.2` `rbenv rehash` and `rails -v` to confirm. 
- Install [PostgreSQL](https://postgresapp.com).
- Follow the first set of instructions above.


## Database Setup and Running the Server:
This repo requires hosting locally. To start hosting the local server, start by opening PostgreSQL and starting the server (the elephant should appear in your menu bar). Then, in your terminal navigate to the directory you've installed this repo in. Once there, execute in order:
- `rails db:create`
- `rails db:migrate`
- `rails db:seed`
  - You should seed 'Database Seeded! in your terminal.
-  ```rails s```. 

The rails server is functioning solely as a backend API for local development, so you do not need to navigate to localhost:3000 in your browser unless you'd like to test to make sure the database is running correctly. It's recommended to run the backend on port 3000 first, then the frontend on a different port.

---


## License
[MIT](https://choosealicense.com/licenses/mit/) 




