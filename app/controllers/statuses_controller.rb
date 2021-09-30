class StatusesController < ApplicationController

    def index
        statuses = Status.all
        render json: statuses
    end

    def show
        statuses = Status.find(params[:id])
        render json: statuses
    end

    def create
        statuses = Status.create!(item_params), status: :created
        render json: statuses
    end

    def destroy
        statuses = Status.find_by(id: params[:id])
        if statuses
          statuses.destroy
          head :no_content
        else
          render json: { error: "Status not found" }, status: :not_found
        end
    end       

    def item_params
        params.permit(:status_level)
    end
end
