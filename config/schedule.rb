# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
set :output, './log/cron.log'
require File.expand_path(File.dirname(__FILE__) + '/environment')
set :path_env, ENV['PATH']
rails_env = ENV['RAILS_ENV'] || :development
set :environment, rails_env
job_type :runner, "cd :path && PATH=':path_env' bin/rails runner -e :environment ':task' :output"

# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#

every 1.minutes do
# every 4.days do
#   runner "AnotherModel.prune_old_records"
  runner "DailyMailer.daily_notification"
end
# end

# Learn more: http://github.com/javan/whenever
