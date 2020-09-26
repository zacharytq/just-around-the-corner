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
end
