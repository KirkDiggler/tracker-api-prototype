require 'sinatra/base'
require "sinatra/reloader" 

# TODO: Investigate better way to get the application controller loaded first
require './controllers/application_controller'
Dir[File.join(File.dirname(__FILE__), 'models', '**', '*.rb')].each {|file| require file }
Dir[File.join(File.dirname(__FILE__), 'controllers', '**', '*.rb')].each {|file| require file unless file == './controllers/application_controller.rb' }

class TrackerApi < Sinatra::Base
    configure do 
        enable :logging
    end

    configure :development do
        register Sinatra::Reloader
    end    
    use DynamicDataController
    use UserDataDefinitionsController
end