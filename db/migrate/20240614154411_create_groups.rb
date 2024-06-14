class CreateGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :groups do |t|
      t.string :group_nm
      t.string :registration_group_cd
      t.string :card_nm
      t.string :group_type_cd
      t.string :notes
      t.datetime :effective_start_dt
      t.datetime :effective_end_dt

      t.timestamps
    end
  end
end
