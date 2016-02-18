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
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - IBAction Methods
    
    @IBAction func test() {
        // Test button tapped
    }
    
    @IBAction func restart() {
        // Restart the game
    }
    
    @IBAction func firstStepperChanged() {
        // Change the first stepper value
    }
    
    @IBAction func secondStepperChanged() {
        // Change the second stepper value
    }

}

