class UsersController < ApplicationController

    def index
        @json_user = UserSerializer.new(User.all)
        render json: @json_user
    end

    def show 
        @user = User.find_by!(id: params[:id])
        @json_user  = UserSerializer.new(@user)
        render json: @json_user
    end

end
