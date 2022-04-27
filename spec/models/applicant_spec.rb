require 'rails_helper'

RSpec.describe Applicant, type: :model do
  subject { create(:applicant) }

  it 'has a valid factory' do
     expect(create(:applicant)).to be_valid 
  end

#   it { is_expected.to validate_presence_of(:first_name) }
    it { should validate_presence_of(:first_name)}
    it { should validate_uniqueness_of(:email)}
end

