module ApplicationHelper
  def to_percentage(value)
    "#{value * 100}%"
  end
  def to_currency(value)
    number_to_currency value, precision: 0
  end
end
