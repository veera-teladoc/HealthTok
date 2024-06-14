class CreatePhoneNumbers < ActiveRecord::Migration[7.1]
  def change
    create_table :phone_numbers do |t|
      t.belongs_to :member
      t.string :phone_number
      t.string :extension
      t.string :phone_type
      
      t.timestamps
    end
  end
end
