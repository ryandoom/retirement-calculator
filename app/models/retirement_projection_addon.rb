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

class RetirementProjectionAddon < ActiveRecord::Base
  validates :year, numericality: {  greater_than_or_equal_to: DateTime.now.year }
  validates :how_many_years, numericality: {  greater_than_or_equal_to: 0, less_than_or_equal_to: 150 }
  validates :amount, numericality: {  greater_than_or_equal_to: 0}

  belongs_to :retirement_projection

  TYPES = ["Expense", "Income"]

  def income?
    self.income_or_expense == "Income"
  end

  def expense?
    !self.income?
  end
end
