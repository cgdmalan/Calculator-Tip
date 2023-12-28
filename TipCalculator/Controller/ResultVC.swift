//
//  ResultVC.swift
//  TipCalculator
//
//  Created by Çiğdem Alan on 2.12.2023.
//

import UIKit

class ResultVC: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var explanationLabel: UILabel!
    
    var result = ""
    var expl = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = result
        explanationLabel.text = expl
        
    }
    
    @IBAction func reCalculateBut(_ sender: UIButton) {
        
        
        dismiss(animated: true)
    }
    
 
}
