class Station < ApplicationRecord

    def index
        stations = Station.all
        render json: stations
    end
end
