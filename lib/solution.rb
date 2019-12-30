def helper(t)
    hour = t[0]
    minute = t[1]
    degree_of_hour = hour * 30
    if hour > 6 
        degree_of_hour = (degree_of_hour - 360).abs
    end
    degree_of_minute = minute * 6 
    by_productHM= (degree_of_hour - degree_of_minute).abs
    moved = (minute / 60 ) * 30
    by_productHM+moved
end 

def clock_angle(time)
     temp_holder = time.split(":")
     t = temp_holder.map{|something| something.to_f}
        helper(t)
end
