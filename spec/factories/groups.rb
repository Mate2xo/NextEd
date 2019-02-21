# frozen_string_literal: true

# == Schema Information
#
# Table name: groups
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  level      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :group do
    name { "MyString" }
    level { 1 }
  end
end