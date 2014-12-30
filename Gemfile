source 'https://rubygems.org'
#ruby=2.1.2@pinger

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.8'
# Use mysql as the database for Active Record
gem 'mysql2'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# To easy consume REST API
gem 'rest-client', '~> 1.7.2'

# For easy user session management
gem 'devise', '~> 3.4.1'

# Easier & faster then ERB
gem 'slim-rails', '~> 2.1.5'

# Bootstrap & it dependencies Date picker for bootstrap (easy calendar)
gem 'less-rails', '~> 2.6.0'
gem 'less-rails-bootstrap', '~> 3.3.0.1'
gem 'bootstrap-datepicker-rails', '~> 1.3.0.2'

# IconFonts - FontAwesome
gem 'font-awesome-rails', '~> 4.2.0.0'

# Just for production like on Heroku
gem 'rails_12factor', group: :production

# Schedule tasks
gem 'rufus-scheduler', '~> 3.0.9'

# Better print on the console
gem 'colorize', '~> 0.7.5'

# GEMs to work only on test & development environments
group :development, :test do
  # RSPec for BDD pratices
  gem 'rspec-rails', '~> 2.14.1'

  # Better Errors for fast debug from the view on the browser
  gem 'better_errors', '~> 1.1.0'

  # Plugin for better errors
  gem 'binding_of_caller', '~> 0.7.2'

  # Option to not use Fixtures (FactoryGirl)
  gem 'factory_girl_rails', require:false

  # Create readable attrs values
  gem 'faker', '~> 1.4.2'

  # RSPec Plugin for testing Views
  gem 'capybara', '~> 2.2.1'

  # RSPec Plugin for code-coverage
  gem 'simplecov', '~> 0.7.1'

  # RSPec Plugin for params on its
  gem 'its'
end