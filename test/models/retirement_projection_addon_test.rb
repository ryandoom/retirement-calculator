# == Schema Information
#
# Table name: retirement_projection_addons
#
#  id                       :integer          not null, primary key
#  retirement_projection_id :integer
#  description              :string
#  year                     :integer
#  how_many_years           :integer
#  amount                   :integer
#  income_or_expense        :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

require 'test_helper'

class RetirementProjectionAddonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
