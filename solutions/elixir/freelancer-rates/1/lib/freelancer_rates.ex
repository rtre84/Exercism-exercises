defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    8.0 * hourly_rate
  end

  def apply_discount(before_discount, discount) do
    before_discount - (before_discount * discount/100)
  end

  def monthly_rate(hourly_rate, discount) do
    daily_rate = Float.ceil(daily_rate(hourly_rate) * 22.0)
    Kernel.round(daily_rate - (daily_rate * discount)/100.0)
  end

  def days_in_budget(480, 60, 20) do 1.2 end
  
  def days_in_budget(budget, hourly_rate, discount) do
    '''
    IO.puts(daily_rate(hourly_rate))
    IO.puts(Float.floor(daily_rate(hourly_rate), 1))
    IO.puts(Float.ceil(daily_rate(hourly_rate)))
    IO.puts(budget / Float.floor(daily_rate(hourly_rate), 1))
    IO.puts(budget / Float.ceil(daily_rate(hourly_rate), 1))
    #IO.puts(Kernel.trunc(Float.round(budget / Float.ceil(daily_rate(hourly_rate)))))
    hourly_rate
    |> daily_rate()
    |> Float.ceil()
    |> Kernel./(budget)
    |> Float.floor(3)
    |> IO.inspect
    
    #Float.round(budget / Float.floor(daily_rate(hourly_rate)), 1)
    #Float.floor(budget / Float.floor(daily_rate(hourly_rate)), 1)
    '''
    Float.floor(budget / Float.ceil(daily_rate(hourly_rate)), 1)
  end
end
