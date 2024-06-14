class CreateConsultations < ActiveRecord::Migration[7.1]
  def change
    create_table :consultations do |t|
      t.belongs_to :group_id, null: false, foreign_key: true
      t.belongs_to :member_id, null: false, foreign_key: true
      t.belongs_to :provider_id, null: false, foreign_key: true
      t.datetime :request_dt
      t.datetime :actual_start_dt
      t.datetime :scheduled_dt
      t.string :clinical_notes
      t.string :consult_request_reason
      t.string :doctor_notes
      t.string :consultation_type

      t.timestamps
    end
  end
end
