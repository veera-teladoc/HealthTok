class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.belongs_to :member, null: false, foreign_key: true
      t.string :street_name
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :address_type

      t.timestamps
    end
  end
end
