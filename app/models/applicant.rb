class Applicant < ApplicationRecord
    validates :first_name, :middle_name, :last_name, :email, presence: true
    validates :email, uniqueness: true
end
