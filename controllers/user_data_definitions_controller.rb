class UserDataDefinitionsController < ApplicationController

    get '/user_data_definitions' do 
        UserDataDefinition.all.to_json
    end
end