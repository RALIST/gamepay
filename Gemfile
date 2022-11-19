source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

source 'https://rubygems.org'
ruby '3.1.2'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'activeadmin'
gem 'active_admin_theme'
gem 'api_guard'
gem 'aws-sdk-s3'
gem 'bcrypt'
gem 'bootsnap', require: false
gem 'devise'
gem 'dotenv'
gem 'dry-validation'
gem 'factory_bot' # move it to dev group after release
gem 'faker' # move it to dev group after release
gem 'fastimage'
gem 'foreman'
gem 'friendly_id'
gem 'hiredis'
gem 'image_processing', '~> 1.8'
gem 'jwt'
gem 'multi_json'
gem 'pagy'
gem 'pg', '~> 1.1'
gem 'pghero'
gem 'pg_search', '2.3.6'
gem 'puma', '~> 5.0'
gem 'rack-cors'
gem 'rails', '>= 7.0.2.3'
gem 'redis', '~> 4.8.0', require: %w[redis redis/connection/hiredis]
gem 'roar'
gem 'rspec'
gem 'rswag'
gem 'sassc'
gem 'sentry-rails'
gem 'sentry-ruby'
gem 'sentry-sidekiq'
gem 'shrine', github: 'shrinerb/shrine'
gem 'sidekiq'
gem 'sprockets-rails'
gem 'trailblazer-endpoint'
gem 'trailblazer-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'annotate'
  gem 'rubocop'
  gem 'rubocop-performance', require: false
  gem 'rubocop-rspec'
end

group :test do
  gem 'rspec-rails'
  gem 'rspec-sidekiq'
  gem 'shoulda-matchers'
  gem 'simplecov'
  gem 'test-prof'
  gem 'timecop'
end

group :production do
  gem 'newrelic_rpm'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'active_link_to', '1.0.5'
gem 'bootstrap', '~> 5.2.2'
gem 'faker'
gem 'haml-rails', '~> 2.0'
gem 'has_scope', '0.7.2'
gem 'meta-tags'
gem 'psych', '< 4'
gem 'sassc'
gem 'turbolinks'
