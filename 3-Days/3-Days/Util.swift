//
//  Util.swift
//  3-Days
//
//  Created by HAKAN ÖZER on 7.01.2021.
//

import Foundation

class Util {
    
    var name = "Ali"
    
    func noParameter() {
        let num1 = 80
        let num2 = 90
        let sum = num1 + num2
        print("Sum : ", sum)
    }
    
    
    func parameter( num1:Int, num2:Int ) {
        let sum = num1 + num2
        print("Sum : ", sum)
    }
    
    func parameterReturn( num1:Int, num2:Int ) -> Int {
        let sum = num1 + num2
        return sum
    }
    
    func parameterReturns( num1:Int, num2:Int ) -> (Int, String) {
        let sum = num1 + num2
        return (sum, "Ali")
    }
    
    
    func stringConcat( name: String, surname: String ) -> String {
        let st = "\(name) \(surname)"
        return st
    }
    
    
}
