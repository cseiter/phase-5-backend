class AddTicketForeignKeys < ActiveRecord::Migration[6.1]
  def change
    add_reference :tickets, :users, foreign_key: true
    add_reference :tickets, :devices, foreign_key: true
    add_reference :tickets, :stations, foreign_key: true
    add_reference :tickets, :status, foreign_key: true
  end
end
