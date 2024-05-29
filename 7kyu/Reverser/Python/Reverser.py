def reverse(n):
    reversed_number = 0
    negative = n < 0
    n = abs(n)

    while n != 0:
        reversed_number = reversed_number * 10 + n % 10
        n //= 10

    return -reversed_number if negative else reversed_number

# Example usage:
print(reverse(123))  # Output: 321
print(reverse(-456)) # Output: -654
print(reverse(1000)) # Output: 1
