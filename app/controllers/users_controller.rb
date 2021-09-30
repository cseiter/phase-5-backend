class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        users = User.find(params[:id])
        render json: users
    end

    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end

    def destroy
        user = User.find_by(id: params[:id])
        if user
          user.destroy
          head :no_content
        else
          render json: { error: "User not found" }, status: :not_found
        end
    end       

    def user_params
        params.permit(:user_name, :ticket_owner)
    end
end
