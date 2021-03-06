# == Schema Information
#
# Table name: retirement_projections
#
#  id                                                 :integer          not null, primary key
#  year_of_birth                                      :integer
#  current_savings                                    :integer
#  current_annual_income                              :integer
#  expected_percentage_increase_in_income_yearly      :decimal(4, 2)
#  current_annual_expenditures                        :integer
#  expected_percentage_increase_in_expenditures       :decimal(4, 2)
#  planned_retirement_age                             :integer
#  age_at_death                                       :integer
#  expected_income_once_retired                       :integer
#  expected_present_day_expenses_when_retired         :integer
#  expected_inflation_rate                            :decimal(4, 2)
#  expected_average_rate_of_return_on_savings         :decimal(4, 2)
#  expected_average_rate_of_return_on_savings_retired :decimal(4, 2)
#  created_at                                         :datetime         not null
#  updated_at                                         :datetime         not null
#

require 'test_helper'

class RetirementProjectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
