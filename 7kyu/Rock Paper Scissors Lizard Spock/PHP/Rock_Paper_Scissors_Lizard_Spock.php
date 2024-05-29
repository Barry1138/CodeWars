<?php
function rpsls($player1, $player2) {
    // Define the rules
    $rules = [
        "scissors" => ["paper", "lizard"],
        "paper" => ["rock", "spock"],
        "rock" => ["lizard", "scissors"],
        "lizard" => ["spock", "paper"],
        "spock" => ["scissors", "rock"]
    ];

    if ($player1 === $player2) {
        return "Draw!";
    } elseif (in_array($player2, $rules[$player1])) {
        return "Player 1 Won!";
    } else {
        return "Player 2 Won!";
    }
}

// Sample tests
echo rpsls("rock", "scissors") . "\n";  // Output: "Player 1 Won!"
echo rpsls("paper", "rock") . "\n";     // Output: "Player 1 Won!"
echo rpsls("lizard", "spock") . "\n";   // Output: "Player 1 Won!"
echo rpsls("spock", "scissors") . "\n"; // Output: "Player 1 Won!"
echo rpsls("scissors", "lizard") . "\n";// Output: "Player 1 Won!"
echo rpsls("scissors", "rock") . "\n";  // Output: "Player 2 Won!"
echo rpsls("rock", "spock") . "\n";     // Output: "Player 2 Won!"
echo rpsls("spock", "paper") . "\n";    // Output: "Player 2 Won!"
echo rpsls("paper", "lizard") . "\n";   // Output: "Player 2 Won!"
echo rpsls("lizard", "scissors") . "\n";// Output: "Player 2 Won!"
echo rpsls("rock", "rock") . "\n";      // Output: "Draw!"
echo rpsls("scissors", "scissors") . "\n"; // Output: "Draw!"
?>
