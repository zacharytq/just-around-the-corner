class GiftsController < ApplicationController

    get "/gifts/:id/delete" do
        if logged_in?
            @gift = Gift.find(params[:id])
            @friend = @gift.friend
            @user = @gift.friend.user
            if current_user == @user
                @gift.destroy
                redirect to "/friends/#{@friend.id}"
            end
        else
            redirect to "/"
        end
    end

    get "/gifts/:id/new" do
        if logged_in?
            @friend = Friend.find(params[:id])
            erb :'/gifts/new'
        else
            redirect to '/'
        end
    end

    post "/gifts/new" do
        @friend = Friend.find(params[:friend])
        @gift = Gift.new(name: params[:name])
        @gift.price = params[:price].to_i
        @gift.url = params[:url]
        @gift.friend = @friend
        if @gift.save
            redirect to "/friends/#{@friend.id}"
        else
            redirect to "/gifts/#{@friend.id}/new"
        end
    end

end
