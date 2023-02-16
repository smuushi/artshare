class UsersController < ApplicationController

    def index

        @users = User.all

        render json: @users

    end

    def create

        @user = User.new(user_params)

        if @user.save
            redirect_to user_url(User.last)
        else
            render json: @user.errors.full_message
        end


    end



    def user_params
        params.require(:user_info).permit(:username)
    end


end