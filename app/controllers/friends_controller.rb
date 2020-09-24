class FriendsController < ApplicationController
    
    get '/friends' do
        if logged_in?
            @user = current_user
            erb :'/friends/show'
        else
            redirect to '/'
        end
    end
end