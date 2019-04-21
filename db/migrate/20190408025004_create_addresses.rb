class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street, null: false
      t.string :city, null: false
      t.string :state, null: false, length: 2
      t.string :zipcode, null: false

      t.decimal :latitude, precision: 10, scale: 6, null: false
      t.decimal :latitude, precision: 10, scale: 6, null: false

      t.timestamps null: false
    end

    add_column :users, :home_address_id, :integer
  end
end
