//
//  TipBrain.swift
//  TipCalculator
//
//  Created by Çiğdem Alan on 2.12.2023.
//

import Foundation
import UIKit


struct TipBrain {
    
    var tip : TipModel?
    
    
    
    mutating func calculateTip (prc : Int, bill: Double, person : Int) -> String{
        
        
        var prcArray = [0,10,20]
      //  var result = (bill * Double(prc / 100)) / Double(person)
       
       if prc == prcArray[0] {
           
           tip = TipModel(exp: "Split between \(person) people with \(prc)%", ResultTip: bill )
         
       } else if prc == prcArray[1] {
           
           tip = TipModel(exp: "Split between \(person) people with \(prc)%", ResultTip: (bill * 0.1 ) / Double(person) )
       }else {
           
           tip = TipModel(exp: "Split between \(person) people with \(prc)%", ResultTip: (bill * 0.2 ) / Double(person) )
       }
      
       return String (format: "%.2f", tip?.ResultTip ?? "no value")
       
        

        
    }
    
    
    func getvalue() -> String {
        
       
        var stringValue = String(format: "%.2f", tip?.ResultTip ?? 0.0)
        return stringValue
        
    }
    func getexp() -> String {
        
        
        
        return tip?.exp ?? "no explanation"
    }
    
    
}
