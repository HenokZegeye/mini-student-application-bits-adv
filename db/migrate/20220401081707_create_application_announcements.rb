class CreateApplicationAnnouncements < ActiveRecord::Migration[7.0]
  def change
    create_table :application_announcements do |t|
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.string :status, null: false
      t.references :academic_program, null: false, foreign_key: true
      t.references :academic_year, null: false, foreign_key: true

      t.timestamps
    end
  end
end
