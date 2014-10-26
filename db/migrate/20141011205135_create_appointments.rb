class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :parent_names
      t.string :phone_numbers
      t.string :email_addresses
      t.string :children_names
      t.string :children_ages
      t.text :other_info
      t.date :tour_date

      t.timestamps
    end
  end
end
