class Application < ApplicationRecord
  belongs_to :applicant
  belongs_to :application_announcement
end
