class UsersController < ApplicationController

    get '/signup' do
        if logged_in?
            redirect to "/friends"
        else
            erb :"/users/signup"
        end
    end

    post '/signup' do
        @user = User.new(params)
        if @user.save
            session[:id] = @user.id
            redirect to "/friends"
        else
            redirect to '/signup'
        end
    end

    get '/login' do
        if logged_in?
            redirect to '/friends'
        else
            erb :'/users/login'
        end
    end

    post '/login' do
        @user = User.find_by(:name => params[:name])
        if @user && @user.authenticate(params[:password])
            session[:id] = @user.id
            redirect to "/friends"
        else
            redirect to '/login'
        end
    end

    get "/logout" do
        session.clear
        redirect to '/'
    end
end