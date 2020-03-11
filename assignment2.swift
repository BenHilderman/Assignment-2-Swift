// Rock Paper Scissors
// @author BenHilderman
// @version 1.0
// @since 2020-03-11

var end = false
var stop = false
var randomInt : Int = 0
var userInt : Int = 0
var comPlay : String = ""
var userInput : String = ""

// When user starts, or restarts
while end == false {
    // Random int for computer
    randomInt = Int.random(in: 0..<4)
    if randomInt == 1 {
        comPlay = "Rock"
    } else if randomInt == 2 {
        comPlay = "Paper"
    } else {
        comPlay = "Scissors"
    }
    // Ask user for input (Rock Paper or Scissors)
    if let userInput = readLine() {
        // If user inputs Rock Paper or Scissors
        if userInput == "Rock" || userInput == "Paper" || userInput == "Scissors" {
           if userInput == "Rock" {
                userInt = 1

           } else if userInput == "Paper" {
                userInt = 2

           } else {
                userInt = 3

           }
            if userInt == randomInt {
                // User ties with the computer
                print("You chose: \(userInput)")
                print("The computer chose: \(comPlay)")
                print("Its a tie!")
                gameCount += 1
 
            } else if randomInt == userInt + 1 || randomInt == userInt - 2 {
                // You lose
                print("\(comPlay) beats \(userInput). You lose.")
                gameCount += 1
  
            } else {
                // You win
                print("\(userInput) beats \(comPlay). You win!")
  
            }
            // Asks user if they want to play again
            print("Do you want to play again? (Yes or No)")
            while stop == false {
                // Ask for input
                if let yesOrNoInput = readLine() {
                    if yesOrNoInput == "No" {
                        // End prodram if user inputs No
                        end = true
                        stop = true
                    } else if yesOrNoInput == "Yes" {
                        // If user inputs Yes
                        stop = true
                    } else {
                        print("Input Yes or No.")
            }
          }
        }
      }
    } else {
    print("Invalid Input. You must enter Rock Paper or Scissors")
  }
}