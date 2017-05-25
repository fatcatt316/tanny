class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.date :birthday
      t.text :notes

      t.timestamps
    end
  end
end
