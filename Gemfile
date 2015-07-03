source 'https://rubygems.org'

gem 'chef', '~> 12.0'

group :lint do
  gem 'foodcritic', '~> 4.0'
  gem 'rubocop', '~> 0.29.1'
  gem 'rake'
end

group :unit do
  gem 'berkshelf', '~> 3.1'
  gem 'chefspec',  '~> 4.2'
  gem 'chef-handler-datadog'
end

group :kitchen_common do
  gem 'test-kitchen', '~> 1.4'
  gem 'kitchen-digitalocean'
  gem 'chef-zero'
end

group :kitchen_vagrant do
  gem 'kitchen-vagrant'
end

group :development do
  gem 'ruby_gntp'
  gem 'growl'
  gem 'rb-fsevent'
  gem 'guard', '~> 2.6'
  gem 'guard-kitchen'
  gem 'guard-foodcritic'
  gem 'guard-rspec'
  gem 'guard-rubocop'
end
