require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new do |task|
  task.rspec_opts = ['-c', '-fd']
end

task :default  => :spec
