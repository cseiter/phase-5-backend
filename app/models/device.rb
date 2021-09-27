class Device < ApplicationRecord
    def index
        devices = Device.all
        render json: devices
    end
end
