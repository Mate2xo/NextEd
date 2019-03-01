# frozen_string_literal: true

# == Schema Information
#
# Table name: student_work_sessions
#
#  id              :bigint(8)        not null, primary key
#  student_id      :bigint(8)
#  work_session_id :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe StudentWorkSession, type: :model do
  describe 'model instanciation' do
    describe 'database' do
      it { is_expected.to have_db_column(:attended).of_type(:boolean).with_options(default: false) }
      it { is_expected.to have_db_column(:student_id).of_type(:integer) }
      it { is_expected.to have_db_column(:work_session_id).of_type(:integer) }
    end

    describe 'asscociations' do
      let(:student_work_session) { create(:student_work_session) }

      it { is_expected.to belong_to(:student) }
      it { is_expected.to belong_to(:work_session) }

      it 'responds to #students' do
        expect(student_work_session.student).to be_truthy
      end

      it 'responds to #work_session' do
        expect(student_work_session.work_session).to be_truthy
      end
    end
  end
end
