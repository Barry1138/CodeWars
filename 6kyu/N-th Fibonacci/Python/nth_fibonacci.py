cache = {1:0, 2:1, 3:1, 4:2}
def nth_fib(n):
    if n in cache:
        return cache[n]
    left = cache[n-1] if n-1 in cache else nth_fib(n-1)
    right = cache[n-2] if n-2 in cache else nth_fib(n-2)
    return left + right
