//
//  AddFeaturedViewController.swift
//  Activity3
//
//  Created by Anton John Bibit Pasigado on 17/09/2018.
//  Copyright © 2018 Anton John Pasigado. All rights reserved.
//

import UIKit

class AddFeaturedViewController: UIViewController , UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var uploadImage: UIButton!
    var imagePicker = UIImagePickerController()
    
    @IBOutlet weak var recipeNameBox: UITextField!
    @IBOutlet weak var recipePrepBox: UITextField!
    @IBOutlet weak var recipeCategoryBox: UITextField!
    @IBOutlet weak var scrollable: UIScrollView!
    
    var delegate: RecipeDelegate?
    var recipes: [Recipe] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
        
        let notificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(adjustForKeyboard), name: Notification.Name.UIKeyboardWillHide, object: nil)
        notificationCenter.addObserver(self, selector: #selector(adjustForKeyboard), name: Notification.Name.UIKeyboardWillChangeFrame, object: nil)
 
    }
    
    @objc func adjustForKeyboard(notification: Notification) {
        let userInfo = notification.userInfo!
        
        let keyboardScreenEndFrame = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let keyboardViewEndFrame = view.convert(keyboardScreenEndFrame, from: view.window)
        
        if notification.name == Notification.Name.UIKeyboardWillHide {
            scrollable.contentInset = UIEdgeInsets.zero
        } else {
            scrollable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardViewEndFrame.height, right: 0)
        }
        
        scrollable.scrollIndicatorInsets = scrollable.contentInset
    }
    
    @IBAction func uploadImage(_ sender: Any) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    internal func imagePickerController(_ picker: UIImagePickerController,
                                       didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageView.contentMode = .scaleToFill
            imageView.clipsToBounds = true
            imageView.image = image
        }
        
        
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addData(_ sender: Any) {
        delegate?.addRecipe(name: recipeNameBox.text!, preparation: recipePrepBox.text!, categories: recipeCategoryBox.text!, image: imageView.image!)
        self.navigationController?.popViewController(animated: true)
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
