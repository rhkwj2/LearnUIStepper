//
//  ViewController.swift
//  LearnUIStepper
//
//  Created by Kim Yeon Jeong on 2019/11/21.
//  Copyright © 2019 Kim Yeon Jeong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cafeAmericanoCount: Int = 0
    var cappuccinoCount: Int = 0
    var flatWhiteCount: Int = 0
    
    var costCafeAmericano = 4.0
    var costCappuccino = 4.2
    var costFlatWhite = 4.2
    
    

    func totalAmount() -> Double {
        let americanoSum = Double(cafeAmericanoCount) * costCafeAmericano
        let cappuccinoSum = Double(cappuccinoCount) * costCappuccino
        let flatWhiteSum = Double(flatWhiteCount) * costFlatWhite
        
        
        let total = americanoSum + cappuccinoSum + flatWhiteSum
        return total
    }


    @IBOutlet weak var cafeAmericanoStepper: UIStepper!
    @IBOutlet weak var cappuccinoStepper: UIStepper!
    @IBOutlet weak var fletWhiteStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

  
    @IBOutlet weak var americanoCupLabel: UILabel!
    @IBOutlet weak var cappuccinoCupLabel: UILabel!
    @IBOutlet weak var fletWhiteCupLabel: UILabel!
    @IBAction func cafeAmericanoValueChanged(_ sender: UIStepper) {
        print(sender.value)
        americanoCupLabel.text = "\(Int(sender.value))"
        cafeAmericanoCount = Int(sender.value)
        
        totalLabel.text = String(format: "%.1f",totalAmount())
    }
    
    
    
    
    @IBAction func cappuccinoValueChanged(_ sender: UIStepper) {
        print(sender.value)
        cappuccinoCupLabel.text = "\(Int(sender.value))"
        cappuccinoCount = Int(sender.value)
        totalLabel.text = String(format: "%.1f",totalAmount())
    }
    
    
    @IBAction func fletWhitevalueChanged(_ sender: UIStepper) {
        print(sender.value)
        fletWhiteCupLabel.text = "\(Int(sender.value))"
        flatWhiteCount = Int(sender.value)
        totalLabel.text = String(format: "%.1f",totalAmount())
    }
    
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
}

