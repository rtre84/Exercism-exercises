local cars = {}

-- returns the amount of working cars produced by the assembly line every hour
function cars.calculate_working_cars_per_hour(production_rate, success_rate)
  result = (success_rate/100)*production_rate
  
  return tonumber(string.format("%." .. (2 or 0) .. "f", result))
end

-- returns the amount of working cars produced by the assembly line every minute
function cars.calculate_working_cars_per_minute(production_rate, success_rate)
  result = cars.calculate_working_cars_per_hour(production_rate, success_rate)//60
  
  return tonumber(string.format("%." .. (2 or 0) .. "f", result))
end

-- returns the cost of producing the given number of cars
function cars.calculate_cost(cars_count)
  rem = cars_count % 10
  total = ((cars_count - rem) * 9500) + (rem * 10000)
    
  return total
end

return cars
