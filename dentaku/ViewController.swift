//
//  ViewController.swift
//  dentaku
//
//  Created by clark on 2023/05/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var displayLavel:UILabel!
    var tempNumber:String = "0"
    var resultNum:Int = 0
    var digitNum:Int = 1
    var flag:String = "null"
    var countNum:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayLavel.text = String(tempNumber)
    }
    func addNum(addNumber:Int){
        digitNum += 1
        if digitNum <= 7{
            tempNumber = tempNumber + String(addNumber)
            displayLavel.text = String(tempNumber)
        }else{
            alert(titleText: "エラー", messageText: "デモ版のためこれ以上入力できません")
        }
    }
    @IBAction func button1(sender: UIButton){
        addNum(addNumber: sender.tag)
    }
    @IBAction func reset(){
        tempNumber = "0"
        flag = "null"
        digitNum = 1
        displayLavel.text = String(tempNumber)
    }
    @IBAction func result(){
        switch flag {
        case "null":
            alert(titleText: "エラー", messageText: "文字を入れてください")
        default:
            print("test")
        }
    }
    @IBAction func plus(){
        
    }
    func alert(titleText:String,messageText:String){
        let alert = UIAlertController(title: titleText, message: messageText, preferredStyle: .alert)
        //ここから追加
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in
            self.dismiss(animated: true, completion: nil)
        }
        alert.addAction(ok)
        //ここまで追加
        present(alert, animated: true, completion: nil)
    }
}

