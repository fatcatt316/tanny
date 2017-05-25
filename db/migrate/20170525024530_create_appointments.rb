class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.datetime :starts_at
      t.datetime :ends_at
      t.belongs_to :address

      t.timestamps
    end
  end
end
