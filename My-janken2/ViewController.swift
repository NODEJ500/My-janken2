//
//  ViewController.swift
//  My-janken2
//
//  Created by Jun on 2021/08/29.
//

import UIKit

class ViewController: UIViewController {
    
    
    var answerNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var answerImageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func shuffleAction(_ sender: Any) {
        
        answerNumber = Int.random(in: 0..<3)
        
        if answerNumber == 0{
            //グー
            answerLabel.text = "グー"
            answerImageView.image = UIImage(named: "gu")
            
        }else if answerNumber == 1{
            //チョキ
            answerLabel.text = "チョキ"
            answerImageView.image = UIImage(named: "choki")
        
        }else if answerNumber == 2{
            //パー
            answerLabel.text = "パー"
            answerImageView.image = UIImage(named: "pa")
            
    }
  }
}
