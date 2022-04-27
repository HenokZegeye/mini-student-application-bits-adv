FactoryBot.define do
    factory :application_announcement, class: 'ApplicationAnnouncement' do
        association :academic_program
        association :academic_year
        start_date {FFaker::Time.date}
        end_date {FFaker::Time.date}
        status {'Open'}
    end
end

