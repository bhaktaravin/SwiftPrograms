//
//  ViewController.swift
//  mathgame
//
//  Created by Ravin Bhakta on 8/18/18.
//  Copyright © 2018 Ravin Bhakta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UILabel!
    @IBOutlet weak var num2: UILabel!
    @IBOutlet weak var equalsLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var instructLabel: UILabel!
    
    @IBOutlet weak var signsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        num1.text="0"
        num2.text="0"
        equalsLabel.text="="
        resultLabel.text = "0"
        signsText.text = " "
        instructLabel.text = "Enter number 0-9 for both numbers"
    }
    
    @IBOutlet weak var signsText: UILabel!
    
    
    var labelNum1:Int=0;
    var labelNum2:Int=0;
    var total:Int = 0;
    
    @IBAction func clearButton(_ sender: Any) {
        num1.text = "0"
        num2.text = "0"
        labelNum2 = 0
        labelNum1 = 0
        resultLabel.text = "0"
        signsText.text = " "
    }
    
    @IBAction func one(_ sender: Any) {
        if(num1.text == "0"){
            num1.text="1"
            labelNum1=1
            print(labelNum1)
        }
        else if(num2.text=="0"){
            num2.text="1"
            labelNum2=1
            print(labelNum2)
        }
        else{
            print("Break")
        }
    }
    @IBAction func two(_ sender: Any) {
        //num1.text="2"
        if(num1.text == "0"){
            num1.text="2"
            labelNum1=2
            print(labelNum1)
        }
        else if(num2.text == "0"){
            num2.text="2"
            labelNum2=2
            print(labelNum2)
        }
        else{
            print("break")
        }
        
    }
    @IBAction func three(_ sender: Any) {
        if(num1.text == "0"){
            num1.text="3"
            labelNum1=3
            print(labelNum1)
        }
        else if(num2.text == "0"){
            num2.text="3"
            labelNum2=3
            print(labelNum2)
        }
        else{
            print("break")
        }
    }
    @IBAction func four(_ sender: Any) {
        if(num1.text == "0"){
            num1.text="4"
            labelNum1=4
            print(labelNum1)
        }
        else if(num2.text == "0"){
            num2.text="4"
            labelNum2=4
            print(labelNum2)
        }
        else{
            print("break")
        }
    }
    @IBAction func five(_ sender: Any) {
        if(num1.text == "0"){
            num1.text="5"
            labelNum1=5
            print(labelNum1)
        }
        else if(num2.text == "0"){
            num2.text="5"
            labelNum2=5
            print(labelNum2)
        }
        else{
            print("break")
        }
    }
    @IBAction func six(_ sender: Any) {
        if(num1.text == "0"){
            num1.text="6"
            labelNum1=6
            print(labelNum1)
        }
        else if(num2.text == "0"){
            num2.text="6"
            labelNum2=6
            print(labelNum2)
        }
        else{
            print("break")
        }
    }
    @IBAction func seven(_ sender: Any) {
        if(num1.text == "0"){
            num1.text="7"
            labelNum1=7
            print(labelNum1)
        }
        else if(num2.text == "0"){
            num2.text="7"
            labelNum2=7
            print(labelNum2)
        }
        else{
            print("break")
        }
    }
    @IBAction func eight(_ sender: Any) {
        if(num1.text == "0"){
            num1.text="8"
            labelNum1=8
            print(labelNum1)
        }
        else if(num2.text == "0"){
            num2.text="8"
            labelNum2=8
            print(labelNum2)
        }
        else{
            print("break")
        }
    }
    @IBAction func nine(_ sender: Any) {
        if(num1.text == "0"){
            num1.text="9"
            labelNum1=9
            print(labelNum1)
        }
        else if(num2.text == "0"){
            num2.text="9"
            labelNum2=9
            print(labelNum2)
        }
        else{
            print("break")
        }
    }
    @IBAction func add(_ sender: Any) {
        signsText.text="+"
      
    }
    @IBAction func minus(_ sender: Any) {
        signsText.text="-"

    }
    @IBAction func divide(_ sender: Any) {
        signsText.text="/"
    }
    @IBAction func multiply(_ sender: Any) {
        signsText.text="*"

    }
    
    @IBAction func submitButton(_ sender: Any) {
        if((labelNum1 != 0 && labelNum2 != 0) && signsText.text == "+"){
            total = labelNum1 + labelNum2
            resultLabel.text = "\(total)"
        }
        if((labelNum1 != 0 && labelNum2 != 0) && signsText.text == "-"){
            total = labelNum1 - labelNum2
            resultLabel.text = "\(total)"
        }
        if((labelNum1 != 0 && labelNum2 != 0) && signsText.text == "/"){
            total = labelNum1 / labelNum2
            resultLabel.text = "\(total)"
        }
        if((labelNum1 != 0 && labelNum2 != 0) && signsText.text == "*"){
            total = labelNum1 * labelNum2
            resultLabel.text = "\(total)"
        }
        if(total <= 0){
            resultLabel.text="\(total)"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

