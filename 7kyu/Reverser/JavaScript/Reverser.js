function reverse(n) {
    let reversedNumber = 0;
    let negative = n < 0;
    n = Math.abs(n);

    while (n > 0) {
        let lastDigit = n % 10;
        reversedNumber = reversedNumber * 10 + lastDigit;
        n = Math.floor(n / 10);
    }

    return negative ? -reversedNumber : reversedNumber;
}

// Example usage:
console.log(reverse(123));  // Output: 321
console.log(reverse(-456)); // Output: -654
console.log(reverse(1000)); // Output: 1
