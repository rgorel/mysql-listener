require "rubygems"
require "bundler/setup"
require 'kodama'

require 'worker'
require 'database'


Kodama::Client.start(ActiveRecord::Base.connection_config) do |c|
  c.binlog_position_file = 'position.log'
  worker = Worker.new

  c.on_row_event do |event|
    worker.process_event(event)
  end
end
