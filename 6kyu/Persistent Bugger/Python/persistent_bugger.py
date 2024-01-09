import functools
def persistence(n):
    counter, res = 0, n
    while res > 9:
        counter+=1
        res = functools.reduce(lambda a,b: int(a)*int(b), str(res))
    return counter
