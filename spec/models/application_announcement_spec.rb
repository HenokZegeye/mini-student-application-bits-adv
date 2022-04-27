require 'rails_helper'

RSpec.describe ApplicationAnnouncement, type: :model do
    subject {create(:application_announcement)}

    it 'has a valid factory' do
        expect(create(:application_announcement)).to be_valid 
    end

    it { should validate_presence_of(:start_date)}
    it { is_expected.to validate_inclusion_of(:status).in_array(['Open', 'Closed']) }
end