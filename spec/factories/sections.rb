# frozen_string_literal: true

# == Schema Information
#
# Table name: sections
#
#  id          :bigint(8)        not null, primary key
#  year        :integer          not null
#  level       :integer          not null
#  sub_section :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :section do
    year { 1 }
    level { 1 }
    sub_section { "MyString" }
  end
end