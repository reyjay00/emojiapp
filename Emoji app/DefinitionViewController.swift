//
//  DefinitionViewController.swift
//  Emoji app
//
//  Created by Joel Reynolds on 31/8/17.
//  Copyright © 2017 Joel Reynolds. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    @IBOutlet weak var definitionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
       
      //  "😆","😎","😶","😥","😡"
     
        if emoji == "😆" {
        definitionLabel.text = "A laughing face"
        }
        
        if emoji == "😎" {
            definitionLabel.text = "Sunglasses"
        }
        
        if emoji == "😶" {
            definitionLabel.text = "No mouth"
        }
        
        if emoji == "😥" {
            definitionLabel.text = "Crying"
        }
        
        if emoji == "😡" {
            definitionLabel.text = "Angry"
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
