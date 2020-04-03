//
//  EmojiTableViewCell.swift
//  EmojiReader
//
//  Created by Andrey on 31.03.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func set(object: Emoji) {
        self.emojiLabel.text = object.emoji
        self.descriptionLabel.text = object.description
        self.nameLabel.text = object.name
    }

    
}
