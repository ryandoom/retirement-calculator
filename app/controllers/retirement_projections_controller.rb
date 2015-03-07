class RetirementProjectionsController < ApplicationController
  def new
    @retirement_projection = RetirementProjection.new({
      year_of_birth: 1981,
      current_savings: 50000,
      current_annual_income: 80000,
      expected_percentage_increase_in_income_yearly: 0.04,
      current_annual_expenditures: 30000,
      expected_percentage_increase_in_expenditures: 0.02,
      planned_retirement_age: 55,
      age_at_death: 95,
      expected_income_once_retired: 5000,
      expected_present_day_expenses_when_retired: 30000,
      expected_inflation_rate: 0.02,
      expected_average_rate_of_return_on_savings: 0.04,
      expected_average_rate_of_return_on_savings_retired: 0.02
      })
  end

  def create
    @retirement_projection = RetirementProjection.new(retirement_projection_params)
    respond_to do |format|
      if @retirement_projection.save
        format.html { redirect_to @retirement_projection, notice: 'Calculation has been run.' }
        format.json { render json: @retirement_projection, status: :created, location: @retirement_projection }
      else
        format.html { render action: 'new' }
        format.json { render json: @retirement_projection.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @rp = RetirementProjection.find(params[:id])
  end

  private
  def retirement_projection_params
    params.require(:retirement_projection).permit!
  end
end
