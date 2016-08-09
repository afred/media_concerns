begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

load 'rails/tasks/statistics.rake'

Bundler::GemHelper.install_tasks

require 'engine_cart/rake_task'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

Dir.glob('lib/tasks/*.rake').each { |r| import r }

task :spec => ["engine_cart:generate"]
