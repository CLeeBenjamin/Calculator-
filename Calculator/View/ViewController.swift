//
//  ViewController.swift
//  Calculator
//
//  Created by Caston  Boyd on 6/20/18.
//  Copyright © 2018 Caston  Boyd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var displayValue: Float {
        get {
            let text = resultLabel.text ?? "0"
            return (text as NSString).floatValue
        }
        
        set {
            resultLabel.text = "\(newValue)"
            numberIsTyped = false
        }
    }
    
//    var operationsArray = OperationsArray()
    var numberIsTyped = false
    var headerView: UIView!
  
    
    //MARK: - Images
   
    let ovalImage1 = UIImage(named: "one")
    let ovalImage2 = UIImage(named: "two")
    let ovalImage3 = UIImage(named: "three")
    let ovalImage4 = UIImage(named: "four")
    let ovalImage5 = UIImage(named: "five")
    let ovalImage6 = UIImage(named: "six")
    let ovalImage7 = UIImage(named: "seven")
    let ovalImage8 = UIImage(named: "eight")
    let ovalImage9 = UIImage(named: "nine")
    let ovalImage0 = UIImage(named: "zero")
    let ovalImageAdd = UIImage(named: "add")
    let ovalImageSubtract = UIImage(named: "subtract")
    let ovalImageDivide = UIImage(named: "divide")
    let ovalImageMultiply = UIImage(named: "multiply")
    let ovalImageEqual = UIImage(named: "equal")
    let ovalImageClear = UIImage(named: "Clear")
    
    //MARK: - Percentage Button Images
    let giveImage = UIImage(named: "give")
    let takeImage = UIImage(named: "take")
    
    
    //MARK: - Slider Images
    let sliderImage = UIImage(named:"slider" )
    
    
    
    //MARK: - DigitButtons
    var ovalButton1 = UIButton()
    var ovalButton2 = UIButton()
    var ovalButton3 = UIButton()
    var ovalButton4 = UIButton()
    var ovalButton5 = UIButton()
    var ovalButton6 = UIButton()
    var ovalButton7 = UIButton()
    var ovalButton8 = UIButton()
    var ovalButton9 = UIButton()
    var ovalButton0 = UIButton()
    var ovalButtonAdd = UIButton()
    var ovalButtonSubtract = UIButton()
    var ovalButtonDivide = UIButton()
    var ovalButtonMultiply = UIButton()
    var ovalButtonEqual = UIButton()
    var ovalButtonClear = UIButton()
    
    
    //MARK: - PercentageButtons
    var percentageButtonGive = UIButton()
    var percentageButtonTake = UIButton()
    
    
    //MARK: - Slider
    var percentageSlider = UISlider()
    
    //MARK: - Result Label
    var resultLabel = UILabel()
    
    
    //MARK: - Slider Color
    let gray = UIColor(hex: 0xD8D8D8)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //MARK: - Background Color
        view.backgroundColor = .black
        
    //MARK: - Set Button Images
        ovalButton1.setImage(ovalImage1, for: .normal)
        ovalButton2.setImage(ovalImage2, for: .normal)
        ovalButton3.setImage(ovalImage3, for: .normal)
        ovalButton4.setImage(ovalImage4, for: .normal)
        ovalButton5.setImage(ovalImage5, for: .normal)
        ovalButton6.setImage(ovalImage6, for: .normal)
        ovalButton7.setImage(ovalImage7, for: .normal)
        ovalButton8.setImage(ovalImage8, for: .normal)
        ovalButton9.setImage(ovalImage9, for: .normal)
        ovalButton0.setImage(ovalImage0, for: .normal)
        ovalButtonAdd.setImage(ovalImageAdd, for: .normal)
        ovalButtonSubtract.setImage(ovalImageSubtract, for: .normal)
        ovalButtonMultiply.setImage(ovalImageMultiply, for: .normal)
        ovalButtonDivide.setImage(ovalImageDivide, for: .normal)
        ovalButtonEqual.setImage(ovalImageEqual, for: .normal)
        ovalButtonClear.setImage(ovalImageClear, for: .normal)
        
        //MARK: - Set Title Value
        ovalButton1.setTitle("1", for: .normal)
        ovalButton2.setTitle("2", for: .normal)
        ovalButton3.setTitle("3", for: .normal)
        ovalButton4.setTitle("4", for: .normal)
        ovalButton5.setTitle("5", for: .normal)
        ovalButton6.setTitle("6", for: .normal)
        ovalButton7.setTitle("7", for: .normal)
        ovalButton8.setTitle("8", for: .normal)
        ovalButton9.setTitle("9", for: .normal)
        ovalButton0.setTitle("0", for: .normal)
        
        ovalButtonClear.setTitle("clear", for: .normal)
        
        ovalButtonAdd.setTitle("+", for: .normal)
        ovalButtonSubtract.setTitle("-", for: .normal)
        ovalButtonMultiply.setTitle("*", for: .normal)
        ovalButtonDivide.setTitle("/", for: .normal)
        
        
    
        //MARK: - Set Percentage Buttons
        percentageButtonGive.setImage(giveImage, for: .normal)
        percentageButtonTake.setImage(takeImage, for: .normal)
        
        
        //MARK: - Set Slider Images
        percentageSlider.setMinimumTrackImage(sliderImage, for: .normal)
        percentageSlider.backgroundColor = gray
        
        
        
    //MARK: - Adding Buttons as subview to the main view
        view.addSubview(ovalButton1)
        view.addSubview(ovalButton2)
        view.addSubview(ovalButton3)
        view.addSubview(ovalButtonAdd)
        
        view.addSubview(ovalButton4)
        view.addSubview(ovalButton5)
        view.addSubview(ovalButton6)
        view.addSubview(ovalButtonDivide)
        
        view.addSubview(ovalButton7)
        view.addSubview(ovalButton8)
        view.addSubview(ovalButton9)
        view.addSubview(ovalButtonMultiply)
        
        view.addSubview(ovalButton0)
        view.addSubview(ovalButtonSubtract)
        view.addSubview(ovalButtonEqual)
        view.addSubview(ovalButtonClear)
        
        
        //MARK: - Add Percentage Buttons to main view
        view.addSubview(percentageButtonTake)
        view.addSubview(percentageButtonGive)
        
        
        //MARK: - Add Percentage Slider
        view.addSubview(percentageSlider)
        
        
        //MARK: - Add Results to View
        view.addSubview(resultLabel)
    
        
    //MARK: - Place Digit buttons on View
        ovalButton1.frame = CGRect(x: 33, y: 500, width: 66, height: 66)
        ovalButton2.frame = CGRect(x: 113, y: 500, width: 66, height: 66)
        ovalButton3.frame = CGRect(x: 193, y: 500, width: 66, height: 66)
        ovalButtonAdd.frame = CGRect(x: 276, y: 500, width: 66, height: 66)
        
        ovalButton4.frame = CGRect(x: 33, y: 419, width: 66, height: 66)
        ovalButton5.frame = CGRect(x: 113, y: 419, width: 66, height: 66)
        ovalButton6.frame = CGRect(x: 193, y: 419, width: 66, height: 66)
        ovalButtonDivide.frame = CGRect(x: 276, y: 419, width: 66, height: 66)
        
        
        ovalButton7.frame = CGRect(x: 33, y: 340, width: 66, height: 66)
        ovalButton8.frame = CGRect(x: 113, y: 340, width: 66, height: 66)
        ovalButton9.frame = CGRect(x: 193, y: 340, width: 66, height: 66)
        ovalButtonMultiply.frame = CGRect(x: 276, y: 340, width: 66, height: 66)
        
        
        ovalButton0.frame = CGRect(x: 33, y: 581, width: 66, height: 66)
        ovalButtonSubtract.frame = CGRect(x: 276, y: 581, width: 66, height: 66)
        ovalButtonEqual.frame = CGRect(x: 193, y: 581, width: 66, height: 66)
        ovalButtonClear.frame = CGRect(x: 113, y: 581, width: 66, height: 66)
        
       
        
    //MARK: - Place Percentage Buttons on View
        percentageButtonGive.frame = CGRect(x: 0, y: 210, width: 80, height: 54)
        percentageButtonTake.frame = CGRect(x: 0, y: 264, width: 80, height: 54)
        

    //MARK: - Place Percentage Sliders on View
        percentageSlider.frame = CGRect(x: 72, y: 211, width: 300, height: 107)
        
        
        
        
    //MARK: - Result Label on View
        resultLabel.frame = CGRect(x: 0, y: 40, width: 375, height: 172)
        resultLabel.textColor = .white
        resultLabel.textAlignment = .right
        resultLabel.font = UIFont(descriptor: UIFontDescriptor.init(name: "Superclarendon", size: 50), size: 50)
       resultLabel.text = ""

        
        
        //MARK: - Add functions to buttons
        ovalButton1.addTarget(self, action: #selector(numberButtonPressed), for: .touchUpInside)
     
         ovalButton2.addTarget(self, action: #selector(numberButtonPressed), for: .touchUpInside)
        ovalButton3.addTarget(self, action: #selector(numberButtonPressed), for: .touchUpInside)
        
        ovalButton4.addTarget(self, action: #selector(numberButtonPressed), for: .touchUpInside)
        ovalButton5.addTarget(self, action: #selector(numberButtonPressed), for: .touchUpInside)
        
        ovalButton6.addTarget(self, action: #selector(numberButtonPressed), for: .touchUpInside)
        ovalButton7.addTarget(self, action: #selector(numberButtonPressed), for: .touchUpInside)
        
        ovalButton8.addTarget(self, action: #selector(numberButtonPressed), for: .touchUpInside)
        
        ovalButton9.addTarget(self, action: #selector(numberButtonPressed), for: .touchUpInside)
        
        ovalButton0.addTarget(self, action: #selector(numberButtonPressed), for: .touchUpInside)
        
      
        
      ovalButtonClear.addTarget(self, action: #selector(clearButtonWasPressed), for: .touchUpInside)
        
       
}
    
    
    @objc func numberButtonPressed(button: UIButton) {
        
        guard let digit = button.currentTitle else { return }
        if numberIsTyped {
            let resultText = resultLabel.text ?? ""
            resultLabel.text = resultText + digit
        } else {
            resultLabel.text = digit
           numberIsTyped = true
        }
    }

    @objc func clearButtonWasPressed(button: UIButton){
        
        guard let clearButton = button.currentTitle else { return }
        
        if button.currentTitle == clearButton {
            resultLabel.text = ""
        }
        
    }
    
    
//    func enter() {
//        numberIsTyped = false
//        stack.push(number: displayValue)
//        stack.log()
//    }
//    
//    
//    
//    func operate(button: UIButton) {
//        guard let operation = button.currentTitle else { return }
//        
//        if numberIsTyped {
//            enter()
//        }
//        
//        if stack.count() >= 2 {
//            let float1 = stack.pop()!
//            let float2 = stack.pop()!
//            
//            switch operation {
//            case "/":
//                displayValue = float2 / float1
//            case "*":
//                displayValue = float2 * float1
//            case "−":
//                displayValue = float2 - float1
//            case "+":
//                displayValue = float2 + float1
//            default:
//                stack.push(number: float1)
//                stack.push(number: float2)
//                
//            }
//            
//            enter()
//        }
//        
//    }
    
    
    
}


        
        
        
        
//
//        var ovalNumbers: [String]
//
//
//        switch button {
//
//
//
//
//
//
//
//
//
//        case ovalButton1:
//            resultLabel.text = "1"
//        case ovalButton2:
//            resultLabel.text = "2"
//        case ovalButton3:
//            resultLabel.text = "3"
//        case ovalButton4:
//            resultLabel.text = "4"
//        case ovalButton5:
//            resultLabel.text = "5"
//        case ovalButton6:
//            resultLabel.text = "6"
//        case ovalButton7:
//            resultLabel.text = "7"
//        case ovalButton8:
//            resultLabel.text = "8"
//        case ovalButton9:
//            resultLabel.text = "9"
//        case ovalButton0:
//            resultLabel.text = "0"
//       default:
//            break
//        }
//
//
//    }
//}


extension UIColor {
    
    convenience init(hex: Int) {
        let components = (
            R: CGFloat((hex >> 16) & 0xff) / 255,
            G: CGFloat((hex >> 08) & 0xff) / 255,
            B: CGFloat((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.R, green: components.G, blue: components.B, alpha: 1)
    }
    
}

extension CGColor {
    
    class func colorWithHex(hex: Int) -> CGColor {
        
        return UIColor(hex: hex).cgColor
        
    }
    
}





