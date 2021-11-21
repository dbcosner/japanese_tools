source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Safer download of binary files. Read more: https://www.twilio.com/blog/download-image-files-ruby
gem 'down', '~> 2.4.0'
# Extract a wider variety of archives. Read more: https://www.rubydoc.info/gems/extracter/1.2.8
gem 'extracter', '~> 1.2.0'
# Use the command pattern for services. Read more: https://github.com/iHiD/mandate
gem 'mandate', '~> 1.0.0'
# Use MongoDB with rails. Read more: https://github.com/mongodb/mongoid
gem 'mongoid', '~> 7.3.0'
# Parse Japanese phrases and sentences. Read more: https://github.com/Kimtaro/ve
gem 've', '~> 0.0.0', '>= 0.0.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  # Debugging with Pry
  gem 'pry', '~> 0.14.0' # Must be manually required in spec_helper.rb to work in RSpec
  gem 'pry-nav', '~> 1.0.0' # See: https://stackoverflow.com/questions/20404267/cant-escape-from-eval-with-next-using-pry-rails
  gem 'pry-rails', '~> 0.3.0', '>= 0.3.9'
  # Use RSPpec
  gem 'rspec-rails', '~> 5.0.0'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
