class ApplicationAnnouncement < ApplicationRecord
  belongs_to :academic_program
  belongs_to :academic_year

  STATUSES = ['Open', 'Closed']

  validates :start_date, :end_date, :status, presence: true
  validates :status, inclusion: {in: STATUSES}
end
