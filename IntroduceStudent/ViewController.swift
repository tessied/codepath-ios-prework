//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Tessie Dong on 12/20/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var hobbyTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "Hi! My name is \(firstNameTextField.text!) \(lastNameTextField.text!). I am currently a \(year!)-year student at \(schoolNameTextField.text!). I own \(numberOfPetsLabel.text!) pet(s), and it is \(morePetsSwitch.isOn) that I want more pets. In my free time, I like to \(hobbyTextField.text!). Nice to meet you!"
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
        alertController.addAction(action)
                
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
}

