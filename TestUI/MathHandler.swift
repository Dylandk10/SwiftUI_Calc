//
//  MathHandler.swift
//  TestUI
//
//  Created by Dylan Kelly on 9/3/21.
//

import Foundation

public class MathHandler {
    var num1:String
    var num2:String
    
    //switch between two numbers
    var firstOrSecond:Bool
    
    //over write the main label from all 0s to the actual number
    var UIState:Bool
    
    init() {
        self.num1 = ""
        self.num2 = ""
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
            return "00000"
        } else {
            if(firstOrSecond) {
                return self.num1
            } else {
                return self.num2
            }
        }
    }
    
}
