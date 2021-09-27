class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :ticket_title
      t.string :ticket_details
      t.string :ticket_number
      t.string :integer

      t.timestamps
    end
  end
end
