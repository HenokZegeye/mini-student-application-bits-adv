class AcademicProgram < ApplicationRecord
  belongs_to :program
  belongs_to :program_level
  belongs_to :program_type

  validates :duration, presence: true, numericality: { integer_only: true, less_than: 7}
end
