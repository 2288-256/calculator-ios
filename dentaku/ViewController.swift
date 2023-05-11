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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayLavel.text = String(tempNumber)
    }
    func addNum(addNumber:String){
        digitNum += 1
        if digitNum <= 7{
            tempNumber = tempNumber + addNumber
            displayLavel.text = String(tempNumber)
        }else{
            alert(titleText: "エラー", messageText: "デモ版のためこれ以上入力できません")
        }
    }
    @IBAction func button1(){
        addNum(addNumber: "1")
    }
    @IBAction func button2(){
        addNum(addNumber: "2")
    }
    @IBAction func button3(){
        addNum(addNumber: "3")
    }
    @IBAction func button4(){
        addNum(addNumber: "4")
    }
    @IBAction func button5(){
        addNum(addNumber: "5")
    }
    @IBAction func button6(){
        addNum(addNumber: "6")
    }
    @IBAction func button7(){
        addNum(addNumber: "7")
    }
    @IBAction func button8(){
        addNum(addNumber: "8")
    }
    @IBAction func button9(){
        addNum(addNumber: "9")
    }
    @IBAction func button0(){
        addNum(addNumber: "0")
    }
    @IBAction func reset(){
        tempNumber = "0"
        digitNum = 1
        displayLavel.text = String(tempNumber)
    }
    @IBAction func result(){
//        switch flag {
//        case "null":
//            alert(titleText: "エラー", messageText: "デモ版のためこれ以上入力できません")
//        }
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

