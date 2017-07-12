class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.integer :requester_id
      t.integer :assignee_id
      t.string :subject
      t.text :description
      t.text :tags

      t.timestamps
    end
  end
end
