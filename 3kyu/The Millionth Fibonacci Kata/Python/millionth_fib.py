def fib(n):
    safe = 1
    if n < 0 and n%2 == 0: 
        safe = -1
    n = abs(n)
    even = lambda k, m: k*(2*m-k)
    none = lambda k, m: m**2+k**2
    st = [0,1,1,2,3,5,8,13,21,34,55, 89,144]
    core, val, k, m, pex = [], 0, 0, 0, 0
    while n>9: 
        if n%2 == 0:
            core.append(True)
            n = n//2
        else:
            core.append(False)
            n = n//2
    k = st[n]
    m = st[n+1]
    for x in core[::-1]:
        if x:
            pex = k
            k = even(k,m)
            m = none(pex,m)
        else:
            pex = k    
            k = even(k,m)
            m = none(pex,m)
            pex = k
            k = m
            m += pex
    return k*safe
