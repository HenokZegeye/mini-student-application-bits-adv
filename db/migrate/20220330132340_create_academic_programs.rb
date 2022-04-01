class CreateAcademicPrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :academic_programs do |t|
      t.references :program, null: false, foreign_key: true
      t.references :program_level, null: false, foreign_key: true
      t.references :program_type, null: false, foreign_key: true
      t.integer :duration

      t.timestamps
    end
  end
end
