//
//  ViewController.swift
//  Emoji app
//
//  Created by Joel Reynolds on 6/8/17.
//  Copyright © 2017 Joel Reynolds. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var CoolTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        CoolTableView.dataSource = self
        CoolTableView.delegate = self
        emojis = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at:  indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "MoveSegway", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😆"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "Smiley face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😎"
        emoji2.birthYear = 2016
        emoji2.category = "Sunglasses"
        emoji2.definition = "Smiley face with sunglasses"
     
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😶"
        emoji3.birthYear = 2017
        emoji3.category = "No mouth"
        emoji3.definition = "Smiley with no mouth"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😥"
        emoji4.birthYear = 2018
        emoji4.category = "Smiley no mouth"
        emoji4.definition = "Smiley sad face (kinda no mouth)"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😡"
        emoji5.birthYear = 2019
        emoji5.category = "Not smiley"
        emoji5.definition = "ANgry face"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5]
        
    }

}

