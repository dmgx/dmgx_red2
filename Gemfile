source 'http://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.8'
gem "jquery-rails", "~> 2.0.2"
gem "i18n", "~> 0.6.0"
gem "coderay", "~> 1.0.6"
gem "fastercsv", "~> 1.5.0", :platforms => [:mri_18, :mingw_18, :jruby]
gem "builder", "3.0.0"

gem 'heroku'

# Override WebBrick
gem 'thin'

# Use Postgresql for all Environments
gem 'pg'

gem "rmagick", ">= 2.0.0"

# Optional gem for OpenID authentication
group :openid do
  gem "ruby-openid", "~> 2.1.4", :require => "openid"
  gem "rack-openid"
end

group :development do
  gem "rdoc", ">= 2.4.2"
  gem "yard"
end

group :test do
  gem 'rspec'
end

# Load plugins' Gemfiles
Dir.glob File.expand_path("../plugins/*/Gemfile", __FILE__) do |file|
  instance_eval File.read(file)
end
