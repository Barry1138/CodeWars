function rpsls(player1, player2) {
    // Define the rules
    const rules = {
        scissors: ["paper", "lizard"],
        paper: ["rock", "spock"],
        rock: ["lizard", "scissors"],
        lizard: ["spock", "paper"],
        spock: ["scissors", "rock"]
    };

    if (player1 === player2) {
        return "Draw!";
    } else if (rules[player1].includes(player2)) {
        return "Player 1 Won!";
    } else {
        return "Player 2 Won!";
    }
}

// Sample tests
console.log(rpsls("rock", "scissors"));  // Output: "Player 1 Won!"
console.log(rpsls("paper", "rock"));     // Output: "Player 1 Won!"
console.log(rpsls("lizard", "spock"));   // Output: "Player 1 Won!"
console.log(rpsls("spock", "scissors")); // Output: "Player 1 Won!"
console.log(rpsls("scissors", "lizard"));// Output: "Player 1 Won!"
console.log(rpsls("scissors", "rock"));  // Output: "Player 2 Won!"
console.log(rpsls("rock", "spock"));     // Output: "Player 2 Won!"
console.log(rpsls("spock", "paper"));    // Output: "Player 2 Won!"
console.log(rpsls("paper", "lizard"));   // Output: "Player 2 Won!"
console.log(rpsls("lizard", "scissors"));// Output: "Player 2 Won!"
console.log(rpsls("rock", "rock"));      // Output: "Draw!"
console.log(rpsls("scissors", "scissors")); // Output: "Draw!"
