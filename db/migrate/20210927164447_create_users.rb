class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :ticket_owner
      t.string :boolean

      t.timestamps
    end
  end
end
