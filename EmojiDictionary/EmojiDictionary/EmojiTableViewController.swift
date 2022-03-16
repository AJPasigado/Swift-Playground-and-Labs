//
//  EmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by Anton John Bibit Pasigado on 08/08/2018.
//  Copyright © 2018 Anton John Pasigado. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController, EmojiDelegate {
    
    var names = ["AJ", "Bibi", "Casy", "Denny", "Elsa", "Finn", "Greg"]
    
    var emojiCategories: [EmojiCategory] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let emojiSmileys = [
            Emoji(symbol: "😀", desc: "grinning face"),
            Emoji(symbol: "☺️", desc: "smiling face"),
            Emoji(symbol: "😗", desc: "kissing face"),
        ]
        
        let emojiNature = [
            Emoji(symbol: "🐄", desc: "cow"),
            Emoji(symbol: "🐎", desc: "horse"),
            Emoji(symbol: "🐕", desc: "dog"),
        ]
        
        emojiCategories = [
            EmojiCategory(categoryName: "Smileys and Faces", emojis: emojiSmileys),
            EmojiCategory(categoryName: "Nature", emojis: emojiNature),
        ]
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return emojiCategories.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojiCategories[section].emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameIdentifier", for: indexPath)

        let section = indexPath.section
        let row = indexPath.row
        cell.textLabel?.text = String(emojiCategories[section].emojis[row].symbol)
        cell.detailTextLabel?.text = emojiCategories[section].emojis[row].desc

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return emojiCategories[section].categoryName
    }

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
   

   
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            emojiCategories[indexPath.section].emojis.remove(at: indexPath.row)
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
        
        if segue.identifier == "newEmojiIdentifier"{
            if let vc = segue.destination as? NewEmojiVC {
                vc.delegate = self
            }
        }
    }
    
    func addEmoji(symbol: Character, desc: String, category: String) {
        var found = false
        for i in emojiCategories{
            if (i.categoryName == category) {
                found = true
                i.emojis.append(Emoji(symbol: symbol, desc: desc))
            }
        }
        if !found {
            emojiCategories.append(EmojiCategory(categoryName: category, emojis: [Emoji(symbol: symbol, desc: desc)]))
        }
        
        self.tableView.reloadData()
    }
    
    func getEmojiCategories() -> [EmojiCategory] {
        return emojiCategories
    }
 

}
