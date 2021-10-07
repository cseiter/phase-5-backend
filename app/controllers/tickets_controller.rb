class TicketsController < ApplicationController

    def index
        tickets = Ticket.all
        render json: tickets
    end

    def show
        tickets = Ticket.find(params[:id])
        render json: tickets
        #render json: tickets, include: :comments
    end

    def create
        ticket = Ticket.create!(ticket_params)
        render json: ticket, status: :created
    end

    def update
        ticket = Ticket.find_by(id: params[:id])
        if ticket
            ticket.update(ticket_params)
            render json: ticket
        else
            render json: {error: "Ticket not found" }, status: :not_found
        end
    end

    def destroy
        ticket = Ticket.find_by(id: params[:id])
        if ticket
          ticket.destroy
          head :no_content
        else
          render json: { error: "Ticket not found" }, status: :not_found
        end
    end       

    def ticket_params
        params.permit(:id, :ticket_title, :ticket_details, :ticket_number, :users_id, :devices_id, :stations_id, :status_id)
    end
end
