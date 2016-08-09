require 'solr_wrapper'
require 'fcrepo_wrapper'
require 'active_fedora/rake_support'

namespace :media_concerns do
  desc "Start development servers"
  task :dev_servers do
    with_server('development') do
      begin
        sleep
      rescue Interrupt
          puts "Stopping development servers"
      end

    end
  end
end
