class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def about
    def time_start_calc
      @time=Time.now
      @start_hour=@time.hour
      @start_minute=@time.min
      @start_second=@time.sec
      puts @time.strftime("%H:%M:%S")
    end

    def time_end_calc
     @time_end=Time.now
     @end_hour=@time_end.hour
     @end_minutes=@time_end.min
     @end_seconds=@time_end.sec
     @time_end.strftime("%H:%M:%S")
    end

    def total_time
     total_hour = (@end_hour.to_i) - (@start_hour.to_i)
     total_minutes = (@end_minutes.to_i) - (@start_minute.to_i)
     total_seconds = (@end_seconds.to_i) - (@start_second.to_i)
     print total_hour.to_s + ":" + total_minutes.to_s + ":" + total_seconds.to_s
   end
end
end 
