//
//  ViewController.swift
//  dentaku
//
//  Created by clark on 2023/05/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var displayLavel:UILabel!
    @IBOutlet var flagLavel:UILabel!
    var tempNumber:String = "0"
    var resultNum:Int = 0
    var resultNum2:Int = 0
    var digitNum:Int = 0
    var flag:String = "null"
    var countNum1:Int = 0
    var countNum2:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayLavel.text = String(tempNumber)
    }
    func addNum(addNumber:Int){
        digitNum += 1
        if digitNum == 1{
            tempNumber = ""
        }
        if digitNum <= 6{
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
        flagLavel.text = ""
        tempNumber = "0"
        flag = "null"
        digitNum = 0
        displayLavel.text = String(tempNumber)
    }
    @IBAction func sigh(sender: UIButton){
        if flag != "null"{
           return alert(titleText: "エラー", messageText: "デモ版のため計算記号を続けて\n押すことはできません")
        }
        switch sender.tag {
        case 11:
            flag = "plus"
            countNum1 = Int(tempNumber)!
            tempNumber = "0"
            displayLavel.text = "0"
            digitNum = 0
            flagLavel.text = String(countNum1) + "+"
        case 12:
            flag = "subtraction"
            countNum1 = Int(tempNumber)!
            tempNumber = "0"
            displayLavel.text = "0"
            digitNum = 0
            flagLavel.text = String(countNum1) + "-"
        case 13:
            flag = "multiplication"
            countNum1 = Int(tempNumber)!
            tempNumber = "0"
            displayLavel.text = "0"
            digitNum = 0
            flagLavel.text = String(countNum1) + "×"
        case 14:
            flag = "division"
            countNum1 = Int(tempNumber)!
            tempNumber = "0"
            displayLavel.text = "0"
            digitNum = 0
            flagLavel.text = String(countNum1) + "÷"
        default:
            alert(titleText: "エラー", messageText: "予期せぬエラーです")
        }
        
    }
    
    @IBAction func result(){
        flagLavel.text = ""
        switch flag {
        case "plus":
            let temp:Int = Int(tempNumber)!
            resultNum = countNum1 + temp
            displayLavel.text = String(resultNum)
            tempNumber = String(resultNum)
            flag = "null"
        case "subtraction":
            let temp:Int = Int(tempNumber)!
            resultNum = countNum1 - temp
            displayLavel.text = String(resultNum)
            tempNumber = String(resultNum)
            flag = "null"
        case "multiplication":
            let temp:Int = Int(tempNumber)!
            resultNum = countNum1 * temp
            displayLavel.text = String(resultNum)
            tempNumber = String(resultNum)
            flag = "null"
        case "division":
            let temp:Int = Int(tempNumber)!
            if tempNumber == "0"{
                alert(titleText: "エラー", messageText: "0で割ることはできません")
                return reset()
            }
            resultNum = countNum1 / temp
            resultNum2 = countNum1 % temp
            
            if resultNum2 != 0{
                displayLavel.text = String(resultNum) + "あまり" + String(resultNum2)
            }else{
                displayLavel.text = String(resultNum)
            }
            tempNumber = String(resultNum)
            flag = "null"
        case "null":
            alert(titleText: "エラー", messageText: "計算記号を押してください")
        default:
            alert(titleText: "エラー", messageText: "予期せぬエラーです")
        }
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

