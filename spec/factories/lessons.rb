# frozen_string_literal: true

# == Schema Information
#
# Table name: lessons
#
#  id             :bigint(8)        not null, primary key
#  date           :date             not null
#  daily_schedule :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryBot.define do
  factory :lesson do
    date { Time.zone.today }
    daily_schedule { "MyString" }
  end
end