def rpsls(player1, player2):
    # Define the rules
    rules = {
        "scissors": ["paper", "lizard"],
        "paper": ["rock", "spock"],
        "rock": ["lizard", "scissors"],
        "lizard": ["spock", "paper"],
        "spock": ["scissors", "rock"]
    }

    if player1 == player2:
        return "Draw!"
    elif player2 in rules[player1]:
        return "Player 1 Won!"
    else:
        return "Player 2 Won!"

# Sample tests
print(rpsls("rock", "scissors"))  # Output: "Player 1 Won!"
print(rpsls("paper", "rock"))     # Output: "Player 1 Won!"
print(rpsls("lizard", "spock"))   # Output: "Player 1 Won!"
print(rpsls("spock", "scissors")) # Output: "Player 1 Won!"
print(rpsls("scissors", "lizard"))# Output: "Player 1 Won!"
print(rpsls("scissors", "rock"))  # Output: "Player 2 Won!"
print(rpsls("rock", "spock"))     # Output: "Player 2 Won!"
print(rpsls("spock", "paper"))    # Output: "Player 2 Won!"
print(rpsls("paper", "lizard"))   # Output: "Player 2 Won!"
print(rpsls("lizard", "scissors"))# Output: "Player 2 Won!"
print(rpsls("rock", "rock"))      # Output: "Draw!"
print(rpsls("scissors", "scissors")) # Output: "Draw!"
