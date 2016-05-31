//
//  ViewController.swift
//  Numbers
//
//  Created by Tran Thai Phuoc on 2016-02-17.
//  Copyright © 2016 Tran Thai Phuoc. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {

    @IBOutlet weak var firstNum: UILabel!
    @IBOutlet weak var secondNum: UILabel!
    @IBOutlet weak var firstStepperValue: UIStepper!
    @IBOutlet weak var secondStepperValue: UIStepper!
    @IBOutlet weak var testButton: UIButton!
    @IBOutlet weak var chanceLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    var random: Int = 0
    var first: Int = 0
    var second: Int = 0
    var chance: Int = 5
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        random = randomize()
        chanceLabel.text = String(chance)
        restartButton.enabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("Error 235: SYSTEM OVERLOADED")
    }

    // MARK: - IBAction Methods
    
    @IBAction func test() {
        // Test button tapped
        switch chance {
        case 1...5:
            // Execute this when still have chance
            // Get the answer
            let answer = (first * 10) + second
            print("The answer is \(answer) while the randomized number is \(random)")
            if answer == random {
                // Win
                statusLabel.text = NSLocalizedString("BINGO", comment: "Bingo!!! You won with number ") + " \(random)"
                testButton.enabled = false
                restartButton.enabled = true
                print("Game win")
            } else if answer > random {
                // Too high
                statusLabel.text = NSLocalizedString("TOO_HIGH", comment: "Too high")
                chance -= 1
                chanceLabel.text = String(chance)
                // Too low
            } else {
                statusLabel.text = NSLocalizedString("TOO_LOW", comment: "Too low")
                chance -= 1
                chanceLabel.text = String(chance)
            }
            if chance == 0 {
                // No more chance
                fallthrough
            }
            break
        default:
            // Game end
            print("Game end")
            statusLabel.text = NSLocalizedString("LOSE", comment: "No more chance, you have lost. The number is ") + " \(random)"
            testButton.enabled = false
            restartButton.enabled = true
            break
        }
    }
    
    @IBAction func restart() {
        // Restart the game
        print("Restart the game")
        random = randomize()
        // Resetting all the values
        restartButton.enabled = false
        testButton.enabled = true
        firstStepperValue.value = 0
        secondStepperValue.value = 0
        first = Int(firstStepperValue.value)
        second = Int(secondStepperValue.value)
        firstNum.text = String(first)
        secondNum.text = String(second)
        statusLabel.text = NSLocalizedString("STATUS", comment: "Status")
        chance = 5
        chanceLabel.text = String(chance)
    }
    
    @IBAction func firstStepperChanged() {
        // Change the first stepper value
        first = Int(firstStepperValue.value)
        firstNum.text = String(first)
    }
    
    @IBAction func secondStepperChanged() {
        // Change the second stepper value
        second = Int(secondStepperValue.value)
        secondNum.text = String(second)
    }

    // MARK: - Helper Methods
    
    func randomize() -> Int {
        // Randomize a number
        let r = Int(arc4random_uniform(100))
        print("The randomized value is \(r)")
        return r
    }
}

