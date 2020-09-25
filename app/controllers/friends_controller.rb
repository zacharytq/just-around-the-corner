class FriendsController < ApplicationController
    
    get '/friends' do
        if logged_in?
            @user = current_user
            erb :'/friends/all'
        else
            redirect to '/'
        end
    end

    get '/friends/:id' do
        @friend = Friend.find(params[:id])
        if logged_in? && current_user = @friend.user
            erb :'/friends/show'
        else
            redirect to '/'
        end
    end
end