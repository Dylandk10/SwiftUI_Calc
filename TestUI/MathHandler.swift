//
//  MathHandler.swift
//  TestUI
//
//  Created by Dylan Kelly on 9/3/21.
//
// so to keep things easy num1 will hold the results so you can easily add more arithmitic too it
// This allows for only 3 states in UI clear = 0 num1 and num2
//

import Foundation

public class MathHandler {
    var num1:String
    var num2:String
    var sign:String
    //switch between two numbers
    var firstOrSecond:Bool
    
    //over write the main label from all 0s to the actual number
    var UIState:Bool
    
    init() {
        self.num1 = ""
        self.num2 = ""
        self.sign = ""
        self.firstOrSecond = true
        self.UIState = true
    }
    
    //add the new number on to the number 
    public func concatNumber(num:String) -> Void {
        self.UIState = false
        if(self.firstOrSecond) {
            self.num1 = self.num1+num
        } else {
            self.num2 = self.num2+num
        }
    }
    
    //handle the UI state for the main label
    public func handleUIText() -> String {
        if(self.UIState) {
            return "0"
        } else {
            if(firstOrSecond) {
                return self.num1
            } else {
                return self.num2
            }
        }
    }
    
    public func clearBtn() -> Void {
        self.UIState = true
        self.num1 = ""
        self.num2 = ""
        self.sign = ""
    }
    
    //handle the math for calc
    public func arithmatic() -> Void {
        let val1:Int! = Int(self.num1)
        let val2:Int! = Int(self.num2)
        var result:Int = 0
        
        
        switch self.sign {
        case "+":
            result = val1 + val2
            break
        case "-":
            result = val1 - val2
            break
        case "/":
            if val2==0 {
                result = 0
            } else {
                result = val1 / val2
            }
            break
        case "x":
            result = val1 * val2
            break
        //until i make enum class
        default:
            result = 0
        }
        firstOrSecond = true
        self.num1 = String(result)
        self.num2 = ""
    }
    
    //assign the sign to sign 
    public func addSign(sign:String) -> Void {
        self.firstOrSecond = false
        self.sign = sign
    }
}
