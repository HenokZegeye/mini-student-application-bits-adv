require 'rails_helper'

RSpec.describe Application, type: :model do
  subject { create(:application) }

  it 'has a valid factory' do
    expect(create(:application)).to be_valid
  end

  it { should belong_to(:applicant)}
  it { should belong_to(:application_announcement)}
end
