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

    patch "/friends/:id/save" do
        if logged_in?
            @friend = Friend.find(params[:id])
            if @friend.user == current_user
                params[:friend][:gift_ids].each do |id|
                   gift = Gift.find(id)
                   gift.purchased = true
                   gift.save
                end
                redirect to "/friends/#{@friend.id}"
            end
        else
            redirect to "/"
        end
    end
    
    post "/friends/new" do
        @user  = current_user
        @friend = Friend.new(name: params[:name])
        @user.friends << @friend
        redirect to "/friends/#{@friend.id}"
    end
end