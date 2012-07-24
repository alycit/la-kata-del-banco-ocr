require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |task|
  task.rspec_opts = ['-c', '-fd']
end

task :roodi do
  system 'roodi lib/*.rb > metrics/roodi.txt'
end

task :flog do
  system 'flog -adg lib/*.rb> metrics/flog.txt'
end

task :flay do
  system 'flay lib/*.rb > metrics/flay.txt'
end

task :reek do
  system 'reek lib/*.rb > metrics/reek.txt'
end

task :default  => :spec
task :metrics => [:roodi, :flog, :flay, :reek]