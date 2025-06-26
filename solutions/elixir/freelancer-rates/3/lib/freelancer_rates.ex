defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    8.0 * hourly_rate
  end

  def apply_discount(before_discount, discount) do
    before_discount - (before_discount * discount/100)
  end

  def monthly_rate(hourly_rate, discount) do
    daily_rate = Float.ceil(daily_rate(hourly_rate) * 22.0)
    Kernel.round(apply_discount(daily_rate, discount))
  end
  
  def days_in_budget(budget, hourly_rate, discount) do
    Float.floor(budget / apply_discount(daily_rate(hourly_rate), discount), 1)
  end
end
