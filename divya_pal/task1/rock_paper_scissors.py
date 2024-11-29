# Rock, Paper and Scissor Game.

import random


choices = ["rock", "paper", "scissors"]
win_cases = {"rock": "scissors", "paper": "rock", "scissors": "paper"}

def winning_cases(user_choice, computer_choice):
    if computer_choice == user_choice:
        return "\nIt's a Draw"
    elif(user_choice, computer_choice) in win_cases:
        return f"\nComputer Choice: {computer_choice}\nWohah!! You Win!"
    else:
        return f"\nComputer Choice: {computer_choice}\nOops! Computer Wins, Better Luck next time."


def play_game():
    while True:
        print("Let's start the game!\nEnter the choice:\n1) rock \n2) paper \n3) scissors")
        user_choice = input().lower()
        computer_choice = random.choice(choices)
    
        if user_choice not in choices:
            return "\nInvalid Choice, please try again."
            continue
        print(winning_cases(user_choice, computer_choice))
        
        print("\nWant to play again?(yes/no)")
        retry = input().lower()
        if retry == "no":
            print("Thanks for playing.")
            break
play_game()