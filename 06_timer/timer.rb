class Timer
  #write your code here
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def seconds=seconds
    @seconds = seconds
  end

  def time_string
    Time.at(seconds - 3600).strftime("%H:%M:%S")
  end

end
