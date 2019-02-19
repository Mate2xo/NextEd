# frozen_string_literal: true

# == Schema Information
#
# Table name: students
#
#  id         :bigint(8)        not null, primary key
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Student, type: :model do
  describe 'model instanciation,' do
    describe 'database' do
      it { is_expected.to have_db_column(:first_name).of_type(:string) }
      it { is_expected.to have_db_column(:last_name).of_type(:string) }
    end

    describe 'validation' do
      it { is_expected.to validate_presence_of(:first_name) }
      it { is_expected.to validate_presence_of(:last_name) }
    end

    describe 'associations' do
      let(:student) { create(:student) }

      it { is_expected.to have_many(:sections) }
      it "responds to #sections" do
        expect(student.sections).to be_truthy
      end

      it "follows association links from #sections back to itself" do
        student.sections << create(:section)
        expect(student.sections.first.students.first).to eq student
      end
    end
  end
end
