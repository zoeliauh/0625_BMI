//
//  ViewController.swift
//  0625_BMI
//
//  Created by woanjwu liauh on 2021/6/29.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var bmiNavigationBar: UINavigationBar!
    @IBOutlet var heightTextField: UITextField!
    @IBOutlet var weightTextField: UITextField!
    @IBOutlet var result: UITextView!
    
    @IBAction func calculate(_ sender: UIButton) {
        //optional binding
        /*
        if let height = Double(heightTextField.text!), let weight = Double(weightTextField.text!) {
            // print(height)
            // print(weight)
            let bmi = weight/((height/100) * (height/100))
            let bmiString = String(format: "%.2f", bmi)
            result.text = ("your BMI is \(bmiString)\n")
        }
 */
        // 提早離開 function
        guard let height = Double(heightTextField.text!), let weight = Double(weightTextField.text!) else {
            //false
            print("error")
            return
        }
        let bmi = weight/((height/100) * (height/100))
        let bmiString = String(format: "%.2f", bmi)
        result.text = ("your BMI is \(bmiString) \n")
        switch bmi {
        case 0..<18.5:
            result.text += "\n too light\n"
        case 18.5..<24:
            result.text += "\n normal\n"
        case 24..<27:
            result.text += "\n too heavy\n"
        case 27..<30:
            result.text += "\n over weight\n"
        default:
            result.text += "\n I am worry about you"
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        result.text = ""
        /*
        if let item = bmiNavigationBar.topItem {
            print("display \(item)")
        }else {
            print("error")
        }
*/
        /*
        bmiNavigationBar.topItem!.title = "BMI calulator"
        bmiNavigationBar.topItem!.prompt = "calulator"
        bmiNavigationBar.topItem!.rightBarButtonItem = UIBarButtonItem(systemItem: .add)
*/
        
    }

}
