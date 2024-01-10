def last_digit(lst):
    res = 1
    for n in reversed(lst):
        if res < 4:
            res = pow(n, res)
            continue
        res = pow(n, res % 4 + 4)
    return res % 10
