class StationsController < ApplicationController

    def index
        stations = Station.all
        render json: stations
    end

    def show
        stations = Station.find(params[:id])
        render json: stations
    end

    def create
        stations = Station.create!(item_params), status: :created
        render json: stations
    end

    def destroy
        station = Station.find_by(id: params[:id])
        if station
          station.destroy
          head :no_content
        else
          render json: { error: "Station not found" }, status: :not_found
        end
    end       

    def item_params
        params.permit(:station_name)
    end
end
