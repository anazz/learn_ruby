class Timer
 def initialize
   @seconds = 0
 end

 def seconds
   @seconds
 end

 def seconds=(time)
   @seconds = time
 end

 def time_string
   #format of hour:minute:second
   #minute must be less than 59 (or 59*60 seconds), otherwise it will convert to hour
   minute = @seconds/60    #note that this is integer math, so it will take the minute and not the remainder
   hour = minute/60
   remainder_seconds = @seconds%60
   if @seconds<=9
     return "00:00:0" << @seconds.to_s
   elsif @seconds>9 && @seconds<=60
     return "00:00:" << @seconds.to_s
   elsif @seconds>60 && @seconds<=9*60 #9 minutes and greater than 1 min
     #ensuring double XX seconds or 0X seconds (this would be easier to use the padded method)
     if remainder_seconds >9
       remainder_seconds_sd = remainder_seconds.to_s
     else
       remainder_seconds_sd = "0" << remainder_seconds.to_s
     end

     return "00:0" << minute.to_s << ":" << remainder_seconds_sd
   end
 end
end