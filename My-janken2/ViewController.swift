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
    }

    @IBOutlet var answerImageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    @IBAction func shuffleAction(_ sender: Any) {
        
        
        //新しいじゃんけんの結果を一時的に格納する変数を設ける
        var newAnswerNumber = 0
        
        //ランダムな結果を出すが、前回の結果と異なる場合のみ採用
        //repeatは繰り返しを意味する
        repeat{
            
            //0,1,2の数値をランダムに算出（乱数）
            newAnswerNumber = Int.random(in: 0..<3)
            
            //前回と同じ結果のときは、再度、ランダムに数値を出す
            //異なる結果のときは、repeatを抜ける
        }while answerNumber == newAnswerNumber
        
        //新しいじゃんけんの結果を格納
        answerNumber = newAnswerNumber
        
        if answerNumber == 0 {
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
