function gcd(a, b) {
    while (b !== 0) {
        let t = b;
        b = a % b;
        a = t;
    }
    return a;
}

function arePairwiseCoprime(moduli) {
    for (let i = 0; i < moduli.length; i++) {
        for (let j = i + 1; j < moduli.length; j++) {
            if (gcd(moduli[i], moduli[j]) !== 1) {
                return false;
            }
        }
    }
    return true;
}

function fromNb2Str(n, moduli) {
    // Check if product of moduli is greater than n
    const product = moduli.reduce((acc, val) => acc * val, 1);
    if (product <= n) {
        return "Not applicable";
    }

    // Check if moduli are pairwise co-prime
    if (!arePairwiseCoprime(moduli)) {
        return "Not applicable";
    }

    // Compute residues and format them into the result string
    const residues = moduli.map(mod => n % mod);
    const result = "-" + residues.join("--") + "-";

    return result;
}

// Sample tests
console.log(fromNb2Str(11, [2, 3, 5]));  // Output: "-1--2--1-"
console.log(fromNb2Str(6, [2, 3, 4]));   // Output: "Not applicable" (2 and 4 are not coprime)
console.log(fromNb2Str(7, [2, 3]));      // Output: "Not applicable" (product 6 <= 7)
console.log(fromNb2Str(187, [8, 7, 5, 3]));  // Output: "-3--5--2--1-"
