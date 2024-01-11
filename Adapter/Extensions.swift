//
//  Extensions.swift
//  Adapter
//
//  Created by Alex Farcasanu on 11.01.2024.
//

import Foundation

extension String {
   var isNumeric: Bool {
     return !(self.isEmpty) && self.allSatisfy { $0.isNumber }
   }
}
