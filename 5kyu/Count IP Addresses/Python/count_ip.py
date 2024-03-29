def ips_between(start, end):
    start_ip_array = start.split('.')
    end_ip_array = end.split('.')
    
    first_part = int(end_ip_array[3]) - int(start_ip_array[3])
    second_part = (int(end_ip_array[2]) - int(start_ip_array[2])) * 256
    third_part = (int(end_ip_array[1]) - int(start_ip_array[1])) * pow(256, 2)
    end_part = (int(end_ip_array[0]) - int(start_ip_array[0])) * pow(256, 3)
    
    return sum([first_part, second_part, third_part, end_part])
