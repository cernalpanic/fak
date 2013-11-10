source 'https://rubygems.org'
ruby '1.9.3'
gem 'rails', '3.2.13'


group :development do
	gem 'sqlite3'
end

group :assets do
	gem 'sass-rails',   '~> 3.2.3'
	gem 'coffee-rails', '~> 3.2.1'
	gem 'uglifier', '>= 1.0.3'
  gem 'thin'
end

gem 'jquery-rails'
gem 'bootstrap-sass'
gem 'cancan'
gem 'devise'
gem 'figaro'
gem 'rolify'
gem 'simple_form'
gem 'country_select'
gem 'jquery-datatables-rails', git: 'git://github.com/rweng/jquery-datatables-rails.git'
gem 'twitter'
gem "haml-rails"

group :development do
	gem 'better_errors'
	gem 'binding_of_caller', :platforms=>[:mri_19, :rbx]
  gem 'meta_request'
	gem 'hub', :require=>nil
	gem 'quiet_assets'
end

group :development, :test do
	gem 'factory_girl_rails'
	gem 'rspec-rails'
end

group :test do
	gem 'capybara'
	gem 'cucumber-rails', :require=>false
	gem 'database_cleaner'
	gem 'email_spec'
	gem 'launchy'
end

group :production do
	gem 'pg'
end
