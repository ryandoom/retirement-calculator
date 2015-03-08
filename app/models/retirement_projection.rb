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

class RetirementProjection < ActiveRecord::Base
  validates :year_of_birth, numericality: { only_integer: true, greater_than_or_equal_to: 1900, less_than_or_equal_to: DateTime.now.year }
  validates :current_savings, numericality: { only_integer: true, greater_than_or_equal_to: 0}
  validates :current_annual_income, numericality: { only_integer: true, greater_than_or_equal_to: 0}
  validates :expected_percentage_increase_in_income_yearly, numericality: {  greater_than_or_equal_to: 0, less_than_or_equal_to: 1 }
  validates :current_annual_expenditures, numericality: { only_integer: true, greater_than_or_equal_to: 0}
  validates :planned_retirement_age, numericality: {  greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  validates :age_at_death, numericality: {  greater_than_or_equal_to: 0, less_than_or_equal_to: 200 }
  validates :expected_income_once_retired, numericality: {  greater_than_or_equal_to: 0}
  validates :expected_present_day_expenses_when_retired, numericality: {  greater_than_or_equal_to: 0}
  validates :expected_inflation_rate, numericality: {  greater_than_or_equal_to: 0, less_than_or_equal_to: 1 }
  validates :expected_average_rate_of_return_on_savings, numericality: {  greater_than_or_equal_to: 0, less_than_or_equal_to: 1 }
  validates :expected_average_rate_of_return_on_savings_retired, numericality: {  greater_than_or_equal_to: 0, less_than_or_equal_to: 1 }

  has_many :retirement_projection_addons
  accepts_nested_attributes_for :retirement_projection_addons, :reject_if => :all_blank, :allow_destroy => true
  def to_param
    "#{id}-#{SecureRandom.uuid}"
  end
end
