class TicketsController < ApplicationController

    def index
        tickets = Ticket.all
        render json: tickets
    end

    def show
        tickets = Ticket.find(params[:id])
        render json: tickets
    end

    def create
        tickets = Ticket.create!(item_params), status: :created
        render json: tickets
    end

    def destroy
        tickets = Ticket.find_by(id: params[:id])
        if tickets
          tickets.destroy
          head :no_content
        else
          render json: { error: "Ticket not found" }, status: :not_found
        end
    end       

    def item_params
        params.permit(:ticket_title, :ticket_details, :ticket_number, :users_id, :devices_id, :stations_id, :status_id)
    end
end
