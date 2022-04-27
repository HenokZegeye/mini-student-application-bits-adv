FactoryBot.define do
    factory :application, class: Application do
        association :applicant
        association :application_announcement
    end
end