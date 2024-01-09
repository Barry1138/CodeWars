def bouncing_ball(h, bounce, window):
    if h != 0 and bounce > 0 and bounce < 1 and window < h:
        count = 1
        height = h * bounce
        while height > window:
            height *= bounce
            count += 2
        return count
    return -1
