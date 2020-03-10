class UsersController < ApplicationController

    def index
        @json_user = UserSerializer.new(User.all)
        render json: @json_user
    end
end
