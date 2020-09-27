class GiftsController < ApplicationController


    delete "/gifts/:id" do
        @gift = Gift.find(params[:id])
        @friend = @gift.friend
        if logged_in? && current_user == @gift.friend.user
            @gift.destroy
            redirect to "/friends/#{@friend.id}"
        else
            redirect to "/"
        end
    end

    patch "/gifts/:id/save" do
        if logged_in?
            @gift = Gift.find(params[:id])
            if current_user.friends.any? {|i| i == @gift.friend}
                @gift.purchased = params[:purchased]
                @gift.save
                redirect to "/friends/#{@gift.friend.id}"
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
            flash[:message] = "You must fill out all fields."
            redirect to "/gifts/#{@friend.id}/new"
        end
    end

end
