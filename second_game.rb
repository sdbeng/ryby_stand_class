def weekday
  current_time = Time.new
  current_time.strftime("%A @ %I:%M:%S")
end

def welcome(name="Daniel", health=10)
  "#{weekday}: Hey #{name}! Your health is #{health}."
end
#ruby method returns over the execution of last statement
puts welcome("Joy",4)
puts welcome()
puts welcome("trish")
