//
//  RecipeTableViewController.swift
//  Activity3
//
//  Created by Anton John Bibit Pasigado on 12/09/2018.
//  Copyright © 2018 Anton John Pasigado. All rights reserved.
//

import UIKit

class RecipeTableViewController: UITableViewController, RecipeDelegate {
    var recipes: [Recipe] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableView.rowHeight = UITableView.UITableViewAutomaticDimension
      //  tableView.estimatedRowHeight = 44
        
        tableView.reloadData()
        
        recipes = [
            Recipe(name: "Pizza", preparation: "1 hr", categories: "Category", image: #imageLiteral(resourceName: "dessert")),
            Recipe(name: "Pizza2", preparation: "1h 30m", categories: "Category2", image: #imageLiteral(resourceName: "dessert"))
        ]
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return recipes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipeIdentifier", for: indexPath) as! RecipeTableViewCell

        // Configure the cell...
        
        let row = indexPath.row
        
        cell.recipeCategory.text = recipes[row].categories
        cell.recipeName.text = recipes[row].name
        cell.recipePrep.text = recipes[row].preparation
        cell.recipeImage.image = recipes[row].image
        
        return cell
    }
 

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
   /*
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 460.00
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            recipes.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "AddFeatured"{
            if let vc = segue.destination as? AddFeaturedViewController {
                vc.delegate = self
            }
        }
    }
 
    
    func addRecipe(name: String, preparation: String, categories: String, image: UIImage) {
        recipes.append(Recipe(name: name, preparation: preparation, categories: categories, image: image))
        self.tableView.reloadData()
    }
    
    func getFeatured() -> [Recipe] {
        return recipes
    }

}
