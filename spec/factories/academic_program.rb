FactoryBot.define do
    factory :academic_program, class: 'AcademicProgram' do
        association :program
        association :program_level
        association :program_type
        duration {4}
    end
end
