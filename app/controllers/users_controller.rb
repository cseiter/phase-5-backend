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
        users = User.create!(item_params), status: :created
        render json: users
    end

    def destroy
        users = User.find_by(id: params[:id])
        if users
          users.destroy
          head :no_content
        else
          render json: { error: "User not found" }, status: :not_found
        end
    end       

    def item_params
        params.permit(:user_name, :ticket_owner)
    end
end
