//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Anton John Bibit Pasigado on 08/08/2018.
//  Copyright © 2018 Anton John Pasigado. All rights reserved.
//

import UIKit

class NewEmojiVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var emojiSymbol: UITextField!
    @IBOutlet weak var emojiDescription: UITextField!
    @IBOutlet weak var emojiCategory: UITextField!
    
    var delegate: EmojiDelegate?
    var pickerView: UIPickerView!
    var categories: [EmojiCategory] = []
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let mcategories = delegate?.getEmojiCategories(){
            categories = mcategories
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
        pickerView = UIPickerView()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        emojiCategory.inputView = pickerView
        
        
        // emojiPicker.dataSource =  delegate?.getEmojiCategories()
       
    }

    @IBAction func saveEmoji(_ sender: Any) {
        delegate?.addEmoji(symbol: Character(emojiSymbol.text!), desc: emojiDescription.text!, category: emojiCategory.text!)
        self.navigationController?.popViewController(animated: true)
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return categories.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return categories[row].categoryName
    }
    
}

