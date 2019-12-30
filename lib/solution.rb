def clock_angle(time)
    numbers = time.split(":")
    hour = numbers[0].to_f
    minutes = numbers[1].to_f

    hour = hour%12

    hour_hand_degree = (hour * 60 + minutes) * 0.5
    minute_hand_degree = 6 * minutes

    diff = hour_hand_degree - minute_hand_degree
    diff *= -1 if diff < 0
    diff = 360 - diff if diff > 180

    diff
end
