class CreateClientAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :client_appointments do |t|
      t.belongs_to :client
      t.belongs_to :appointment

      t.timestamps
    end
  end
end
