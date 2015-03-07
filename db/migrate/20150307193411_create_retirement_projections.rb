class CreateRetirementProjections < ActiveRecord::Migration
  def change
    create_table :retirement_projections do |t|
      t.integer :year_of_birth
      t.integer :current_savings
      t.integer :current_annual_income
      t.decimal :expected_percentage_increase_in_income_yearly, :precision => 4, :scale => 2
      t.integer :current_annual_expenditures
      t.decimal :expected_percentage_increase_in_expenditures, :precision => 4, :scale => 2
      t.integer :planned_retirement_age
      t.integer :age_at_death
      t.integer :expected_income_once_retired
      t.integer :expected_present_day_expenses_when_retired
      t.decimal :expected_inflation_rate, :precision => 4, :scale => 2
      t.decimal :expected_average_rate_of_return_on_savings, :precision => 4, :scale => 2
      t.decimal :expected_average_rate_of_return_on_savings_retired, :precision => 4, :scale => 2
      t.timestamps null: false
    end
  end
end
