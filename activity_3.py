while True:
    player_1 = input("Player 1 - Enter Rock, Paper, or Scissors: ").capitalize()
    player_2 = input("Player 2 - Enter Rock, Paper, or Scissors: ").capitalize()
    
    if player_1 == player_2:
        print("It's a tie!\n")
    elif player_1 == "Rock" and player_2 == "Scissors":
        print("Rock beats Scissors - Player 1 wins!\n")
    elif player_1 == "Scissors" and player_2 == "Paper":
        print("Scissors beats Paper - Player 1 wins!\n")
    elif player_1 == "Paper" and player_2 == "Rock":
        print("Paper beats Rock - Player 1 wins!\n")
    elif player_2 == "Rock" and player_1 == "Scissors":
        print("Rock beats Scissors - Player 2 wins!\n")
    elif player_2 == "Scissors" and player_1 == "Paper":
        print("Scissors beats Paper - Player 2 wins!\n")
    elif player_2 == "Paper" and player_1 == "Rock":
        print("Paper beats Rock - Player 2 wins!\n")
    else:
        print("Invalid input! Please enter Rock, Paper, or Scissors.\n")
        continue
    
    play_again = input("Play again? (y/n): ").lower()
    if play_again != "y":
        print("Thanks for playing!")
        break



