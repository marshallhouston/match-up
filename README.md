# README

# MatchUp!

MatchUp! helps high school students find the right match at a public college or university in Colorado. With MatchUp!, teachers and students can set goals to realistically change their college options. If students can see the future, they can change the present!

It was built from the ground up over a 10 day period by Marshall Houston as a personal project at the [Turing School of Software & Design](https://www.turing.io/)

## Setup

Install Rails at the command line if you haven't yet

    $ gem install rails


Clone the repo.

    $ git clone https://github.com/marshallhouston/match-up.git

Change into the directory and install gem dependencies

    $ cd match-up
    $ bundle install

Next, initialize the database, run the migrations, and seed the database.

    $ rake db:create
    $ rake db:migrate
    $ rake populate_colorado_schools
    $ rake add_slug_to_schools

To run the app on a local server,

    $ rails s

This will run the app on port 3000 'http://localhost:3000'. The app requires a Google Account to access the functionality.

## Testing

MatchUp! is tested in RSpec, the contents of which can be found in the /spec directory folder.

To prepare the database for testing, run

    $ rake db:test:prepare

To run the test suite,

    $ rspec
