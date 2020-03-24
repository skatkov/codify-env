require "rake/testtask"
require 'rubocop/rake_task'

Rake::TestTask.new("test") do |t|
  t.pattern = "test/**/*_test.rb"
end

RuboCop::RakeTask.new do |task|
  task.requires << 'rubocop-performance'
end

task default: [:test, :rubocop]