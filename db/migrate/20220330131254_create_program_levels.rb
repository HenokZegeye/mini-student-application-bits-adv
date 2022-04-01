class CreateProgramLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :program_levels do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
