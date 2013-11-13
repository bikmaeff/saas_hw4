HW4: BDD & TDD CYCLE

In this assignment you will use a combination of Behavior-Driven Design (BDD) and Test-Driven Development (TDD) with the Cucumber and RSpec tools to add a "find movies with same director" feature to RottenPotatoes, and deploy the resulting app on Heroku.

To get the initial RottenPotatoes code, you can either start from a previous working repo containing RottenPotatoes or download the skeleton at the top of the page.

Preparation: Setup of Cucumber and RSpec

    If you are not using the above skeleton, you will first need to:
        Make sure your Gemfile contains these changes recommended in ESaaS.
        Also add these lines within the group :test,:development block, in order to compute code coverage in a Rails app: 
        group :test,:development do 
          gem 'rspec-rails' 
          gem 'simplecov' 
          # rest of whatever was inside this group originally 
        end
    Whatever code you are using, run bundle install --without production to make sure all gems are properly installed.
    Run bundle exec rake db:migrate to apply database migrations.
    Finally, run these commands to set up the Cucumber directories (under features/) and RSpec directories (under spec/) if they don't already exist, allowing overwrite of any existing files:

    rails generate cucumber:install capybara 
    rails generate cucumber_rails_training_wheels:install 
    rails generate rspec:install
    You can double-check if everything was installed by running the tasks bundle exec rake spec and bundle exec rake cucumber. 

    Since presumably you have no features or specs yet, both tasks should execute correctly reporting that there are zero tests to run. Depending on your version of rspec, it may also display a message stating that it was not able to find any _spec.rb files.



If you modified any other files, please include them too. If you are using the Virtual Machine, navigate to the root directory for HW4 and run

tar czf hw4.tar.gz app/ config/ db/migrate features/ spec/ Gemfile Gemfile.lock

This will create the file hw4.tar.gz, which you will submit.

OUTPUT GRADERS

On Time ----------------------------------------
Running student tests found in features/ spec/:
  Cucumber: 3 out of 3 scenarios passed
  RSpec: 0 out of 0 tests passed
  Score: 40/40
----------------------------------------

----------------------------------------
Checking coverage for:
  controllers >= 90.00%
  models >= 90.00%
----------------------------------------
  all files: 100.00%% coverage
  controllers: 100.00%% coverage
  models: 100.00%% coverage
  mailers: 100.00%% coverage
  helpers: 100.00%% coverage
  libraries: 100.00%% coverage
  plugins: 100.00%% coverage

Passed coverage test.
  Score: 20.0/20.0
----------------------------------------

----------------------------------------
Running reference Cucumber scenarios:
  3 out of 3 scenarios passed
  Score: 40/40
----------------------------------------
Total score: 100.0 / 100.0
Completed in 42.034520268 seconds.
