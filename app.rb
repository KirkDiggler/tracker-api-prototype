require 'sinatra/base'
# TODO: Investigate better way to get the application controller loaded first
require_relative 'controllers/application_controller'
Dir[File.join(File.dirname(__FILE__), 'controllers', '**', '*.rb')].each {|file| puts file unless file == './controllers/application_controller.rb' }

class TrackerApi < Sinatra::Base
    use DynamicDataController
end