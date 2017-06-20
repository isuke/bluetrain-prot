require 'rake'
require 'hanami/rake_tasks'

Dir[File.expand_path('../tasks', __FILE__) << '/*.rake'].each { |file| load file }

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
  task default: :spec
rescue LoadError
end
