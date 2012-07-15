require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |task|
  task.rspec_opts = ['-c', '-fd']
end

task :coverage do
  ENV['COVERAGE'] = 'true'
  Rake::Task[:spec].execute
end

task :default  => :spec
