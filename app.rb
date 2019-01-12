require './config/application.rb'

class TrackerApi < Sinatra::Base

    get '/' do 
        "Hello Worlds"
    end
end