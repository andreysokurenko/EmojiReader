//
//  NewEmojiTableViewController.swift
//  EmojiReader
//
//  Created by Andrey on 02.04.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    
    var emoji = Emoji(emoji: "", name: "", description: "", isFavourite: false)
    
    @IBOutlet weak var emojiTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateSaveButtonState()
        updateUI()
        
        
    }
    private func updateUI() {
        emojiTextField.text = emoji.emoji
        nameTextField.text = emoji.name
        descriptionTextField.text = emoji.description
    }
    
    private func updateSaveButtonState () {
        let emoji = emojiTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let description = descriptionTextField.text ?? ""
        
        saveButton.isEnabled = !emoji.isEmpty && !name.isEmpty && !description.isEmpty
    }
    
    @IBAction func changText(_ sender: UITextField) {
        updateSaveButtonState()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else {return}
        
        let emoji = emojiTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let description = descriptionTextField.text ?? ""
        
        self.emoji = Emoji(emoji: emoji,
                           name: name,
                           description: description,
                           isFavourite: self.emoji.isFavourite)
        
    }
    
    
    
}
