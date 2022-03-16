//
//  EmojiTableViewCell.swift
//  EmojiDictionary
//
//  Created by Anton John Bibit Pasigado on 03/09/2018.
//  Copyright © 2018 Anton John Pasigado. All rights reserved.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    @IBOutlet weak var emojiSymbol: UILabel!
    @IBOutlet weak var emojiDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
