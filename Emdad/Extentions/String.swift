//
//  String.swift
//  Emdad
//
//  Created by arab devolpers on 6/10/19.
//  Copyright © 2019 creative. All rights reserved.
//

import Foundation
extension String{
    func localized() -> String {
        return NSLocalizedString(self, comment: "")
    }
    
    func toFloat() -> Float? {
        return NumberFormatter().number(from: self)?.floatValue
    }
    
    func toDouble() -> Double? {
        return NumberFormatter().number(from: self)?.doubleValue
    }
}
