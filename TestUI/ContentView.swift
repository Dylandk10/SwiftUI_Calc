//
//  ContentView.swift
//  TestUI
//
//  Created by Dylan Kelly on 9/3/21.
//

import SwiftUI

let mHandler = MathHandler()
struct ContentView: View {
    @State var UIText:String = mHandler.handleUIText()
    var body: some View {
        VStack {
            //main text for result and input id=mainLabel
            HStack {
                Text(UIText)
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(20)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .id("mainLabel")
            }
            
            HStack {
                
                Button("0") {
                    mHandler.concatNumber(num: "0")
                    UIText = mHandler.handleUIText()
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Button("1") {
                    mHandler.concatNumber(num: "1")
                    UIText = mHandler.handleUIText()
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Button("2") {
                    mHandler.concatNumber(num: "2")
                    UIText = mHandler.handleUIText()
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            
            HStack {
                Button("3") {
                    mHandler.concatNumber(num: "3")
                    UIText = mHandler.handleUIText()
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Button("4") {
                    mHandler.concatNumber(num: "4")
                    UIText = mHandler.handleUIText()
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Button("5") {
                    mHandler.concatNumber(num: "5")
                    UIText = mHandler.handleUIText()
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
