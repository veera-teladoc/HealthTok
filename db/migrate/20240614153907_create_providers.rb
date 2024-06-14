class CreateProviders < ActiveRecord::Migration[7.1]
  def change
    create_table :providers do |t|
      t.belongs_to :source_provider_id, null: false, foreign_key: true
      t.string :provider_type_cd
      t.string :provider_name
      t.string :location
      t.string :description
      t.string :source_provider_id

      t.timestamps
    end
  end
end
