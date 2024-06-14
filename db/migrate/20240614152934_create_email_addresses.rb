class CreateEmailAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :email_addresses do |t|
      t.belongs_to :member
      t.string :email_address
      t.string :email_type

      t.timestamps
    end
  end
end
