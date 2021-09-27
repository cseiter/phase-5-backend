class Status < ApplicationRecord

    def index
        statuses = Status.all
        render json: statuses
    end
end
