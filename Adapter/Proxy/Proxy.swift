//
//  Proxy.swift
//  Adapter
//
//  Created by Alex Farcasanu on 16.01.2024.
//

import Foundation

protocol Shop {
    func buyMoto(for CNP: String) -> String
}

class MotoShop: Shop {
    func buyMoto(for CNP: String) -> String {
        return "Customer with CNP: '\(CNP)' has bought a motorcycle!"
    }
}

class MotoShopProxy: Shop {

    private var motoShop: MotoShop

    init(_ motoShop: MotoShop) {
        self.motoShop = motoShop
    }

    func buyMoto(for CNP: String) -> String {
        if (checkCustomer(with: CNP)) {
            return motoShop.buyMoto(for: CNP)
        } else {
            return "CNP is invalid! Please insert a valid one!"
        }
    }

    private func checkCustomer(with CNP: String) -> Bool {
        return isCNPValid(id: (CNP as NSString).integerValue)
    }
    
    private func isCNPValid(id: Int) -> Bool {
        
        if String(id).count != 13 {
            return false
        }
        
        let controlArray = [2, 7, 9, 1, 4, 6, 3, 5, 8, 2, 7, 9]
   
        var idArray: [String] = []
        var idToArray: [Int] = []
        
        idToArray = String(id).utf8.map{Int(($0 as UInt8)) - 48}
        
        for i in (0...String(id).count - 1) {
            idArray.append(String(idToArray[i]))
        }
        
        var sum = 0
        for i in (0...controlArray.count - 1) {
            if let idArray = Int(idArray[i]) {
                sum += idArray * controlArray[i]
            }
        }
        
        var rest = sum % 11
        if rest == 10 {
            rest = 1
        }

        return rest == Int(idArray[12]) ?? -1
    }
}
