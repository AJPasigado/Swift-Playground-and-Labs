//
//  RecipeModel.swift
//  Activity3
//
//  Created by Anton John Bibit Pasigado on 12/09/2018.
//  Copyright © 2018 Anton John Pasigado. All rights reserved.
//

import Foundation
import UIKit

class Recipe {
    var name:String
    var preparation: String
    var categories:String
    var image: UIImage
    
    init(name: String, preparation: String, categories: String, image: UIImage) {
        self.name = name
        self.preparation = preparation
        self.categories = categories
        self.image = image
    }
}

protocol RecipeDelegate {
    func addRecipe(name: String, preparation: String, categories: String, image: UIImage)
}
