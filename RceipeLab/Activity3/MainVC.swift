//
//  MainVC.swift
//  Activity3
//
//  Created by Anton John Bibit Pasigado on 05/09/2018.
//  Copyright © 2018 Anton John Pasigado. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

  //  @IBOutlet weak var appetizersAndEntreeLBL: UILabel!
  //  @IBOutlet weak var featuredRecipeLBL: UILabel!
  //  @IBOutlet weak var mainTitleLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // appetizersAndEntreeLBL.addCharacterSpacing(kernValue: 1.75)
       // featuredRecipeLBL.addCharacterSpacing(kernValue: 0.3)
       // mainTitleLBL.addCharacterSpacing(kernValue: 0.09)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UILabel {
    func addCharacterSpacing(kernValue: Double = 1.15) {
        if let labelText = text, labelText.count > 0 {
            let attributedString = NSMutableAttributedString(string: labelText)
            attributedString.addAttribute(NSAttributedString.Key.kern, value: kernValue, range: NSRange(location: 0, length: attributedString.length - 1))
            attributedText = attributedString
        }
    }
}
