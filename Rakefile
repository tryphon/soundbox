require 'rubygems'

require 'system_builder'
require 'system_builder/box_tasks'

SystemBuilder::BoxTasks.new(:soundbox) do |box|
  box.boot do |boot|
    boot.version = :squeeze
  end
end

desc "Run continuous integration tasks (spec, ...)"
task :ci => "soundbox:buildbot"