FactoryBot.define do
    factory :applicant, class: Applicant do
        first_name {FFaker::Name.name}
        middle_name {FFaker::Name.name}
        last_name {FFaker::Name.name}
        email {FFaker::Internet.email}
    end
end