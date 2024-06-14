class CreateMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :members do |t|
      t.string :first_nm
      t.string :last_nm
      t.string :username
      t.string :gender
      t.string :healthplan_id
      t.string :source_member_id
      t.date :dob
      t.datetime :effective_start_dt
      t.datetime :effective_end_dt

      t.timestamps
    end
  end
end
