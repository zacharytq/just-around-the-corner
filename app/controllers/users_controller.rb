class UsersController < ApplicationController

    get '/signup' do
        if logged_in?
            redirect to "/friends"
        else
            erb :"/users/signup"
        end
    end

    get '/login' do
        if logged_in?
            redirect to '/friends'
        else
            erb :'/users/login'
        end
    end
end