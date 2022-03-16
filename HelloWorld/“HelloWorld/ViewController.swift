//
//  ViewController.swift
//  “HelloWorld
//
//  Created by Anton John Bibit Pasigado on 18/07/2018.
//  Copyright © 2018 Anton John Pasigado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    
    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelBlue: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    
    @IBOutlet weak var viewController: UIView!
    
    @IBOutlet weak var firstNameTXTBX: UITextField!
    @IBOutlet weak var lastNameTXTBX: UITextField!
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func changeGreetings(_ sender: Any) {
        //greetingLabel.text = greetingLabel.text == "HELLO, " ? "GOODBYE, " : "HELLO, "
        //nameLabel.text = lastNameTXTBX.text! + ", " + firstNameTXTBX.text!
        greetingLabel.text = greetingLabel.text!.hasPrefix("HELLO, ") ? "GOODBYE, " : "HELLO, "
        greetingLabel.text = greetingLabel.text! + lastNameTXTBX.text! + ", " + firstNameTXTBX.text!
    }
    @IBAction func changeValueRed(_ sender: UISlider) {
        labelRed.text = String(Int(sliderRed.value))
        changeBackground()
    }
    
    @IBAction func changeValueBlue(_ sender: UISlider) {
        labelBlue.text = String(Int(sliderBlue.value))
        changeBackground()
    }
    
    @IBAction func changeValueGreen(_ sender: UISlider) {
         labelGreen.text = String(Int(sliderGreen.value))
        changeBackground()
    }
    
    func changeBackground() {
        let blue = sliderBlue!
        let green = sliderGreen!
        let red = sliderRed!
        viewController.backgroundColor = UIColor(red: CGFloat(red.value/255.0), green: CGFloat(green.value/255.0), blue: CGFloat(blue.value/255.0), alpha: 1.0)
    }
    
}

