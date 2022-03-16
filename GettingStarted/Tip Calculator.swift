//
//  Tip Calculator.swift
//  GettingStarted
//
//  Created by Anton John Bibit Pasigado on 18/07/2018.
//  Copyright © 2018 AJ Pasigado. All rights reserved.
//

import Foundation

struct TipCalculator{
    var totalBillAmount: Double
    
    func calculateTip() -> Double {
        return totalBillAmount * 0.15
    }
}
