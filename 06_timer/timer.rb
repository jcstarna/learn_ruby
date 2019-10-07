class Timer
  #write your code here
  def initialize
    @time = 0
  end

  def seconds= seconds_param
    @time = seconds_param
  end

  def seconds
    @time
  end

  def time_string
    hours = @time/3600
    minutes = (@time - hours*3600)/60
    seconds = @time - hours*3600 - minutes*60
    hours.to_s.rjust(2,"0") + ":" + minutes.to_s.rjust(2,"0") + ":" + seconds.to_s.rjust(2,"0")
  end 
end
