//
//  ViewController.swift
//  TipCalculator
//
//  Created by Çiğdem Alan on 2.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billTotal: UITextField!
    @IBOutlet weak var splitNumLabel: UILabel!
    @IBOutlet weak var tenBut: UIButton!
    @IBOutlet weak var twentyBut: UIButton!
    @IBOutlet weak var thirtyBut: UIButton!
    
    
    var splitNum = 0
    var tipBrain = TipBrain()
    var perc = 0
    var totalBill = ""
    var personNum = 0
    var tipCalcSt : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
    }

    @IBAction func stepperChanged(_ sender: UIStepper) {
        
        splitNumLabel.text = String (format: "%.0f", sender.value)
        splitNum = Int(sender.value)
         
        
        
    }
    
    @IBAction func tipSelected(_ sender: UIButton) {
        
        deselectAllButtons()
        sender.isSelected = true
        
        let percentage = sender.titleLabel?.text ?? "no data"
        let mnsPerc = percentage.dropLast()
        perc = Int(mnsPerc) ?? 0
        
        
     
        
        
    }
    
    func deselectAllButtons(){
        for subView in view.subviews
          {
           
            if let button = subView as? UIButton {
                button.isSelected = false
            }
        }
      
    }
    
 
    
    @IBAction func calculateBut(_ sender: UIButton) {
        
        var  tipCalc = tipBrain.calculateTip(prc: perc, bill: Double(billTotal.text!) ?? 0.0, person: splitNum)
       tipCalcSt = String (format: "%.1f", tipCalc)
        
        
        performSegue(withIdentifier: "toResultVC", sender: self)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toResultVC" {
            
            let destinationVC = segue.destination as! ResultVC
            destinationVC.expl = tipBrain.getexp()
            destinationVC.result = tipBrain.getvalue()
            
            
        }
        
    }
}

