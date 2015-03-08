class CreateRetirementProjectionAddons < ActiveRecord::Migration
  def change
    create_table :retirement_projection_addons do |t|
      t.belongs_to :retirement_projection
      t.string :description
      t.integer :year
      t.integer :how_many_years
      t.integer :amount
      t.string :income_or_expense
      t.timestamps null: false
    end
  end
end
