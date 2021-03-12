//
//  ViewController.swift
//  Concentration
//
//  Created by Mohamed Omar on 3/10/21.
//

import UIKit

class ViewController: UIViewController {

    var flipCount:Int = 0{
        didSet
        {
            flipCountLabel.text = "Flips: \(flipCount)"

        }
    }
    @IBOutlet var cardsList: [UIButton]!
    var arrayValue :[String] = ["👻","🎃","👻","🎃"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount+=1
        if let index = cardsList.firstIndex(of: sender){

        flipCard(withEmoji: arrayValue[index] , on: sender)
        print("clicked index \(index) with value : \(arrayValue[index])")
        }
    }
    
    
   
    
    func flipCard(withEmoji emoji: String, on button:UIButton){
    
        if button.currentTitle == emoji{
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor  = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        }else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor  = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
}

