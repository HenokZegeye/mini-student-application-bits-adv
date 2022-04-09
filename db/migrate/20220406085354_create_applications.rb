class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|
      t.string :status
      t.boolean :payment_made
      t.references :applicant, null: false, foreign_key: true
      t.references :application_announcement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
