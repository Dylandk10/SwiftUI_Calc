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
        VStack(spacing:10) {
            //main text for result and input id=mainLabel
            HStack {
                Text(UIText)
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(40)
                    .frame(maxWidth: .infinity, alignment: .bottomTrailing)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            }
            Spacer()
            HStack {
                //clear button
                Button("CLS") {
                    mHandler.clearBtn()
                    UIText = mHandler.handleUIText()
                }.font(.title).frame(width:100, height:100)
                .foregroundColor(.white)
                .background(Color.red)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                Button("=") {
                    mHandler.arithmatic()
                    UIText = mHandler.handleUIText()
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(width:100, height:100)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            }
            
            HStack(spacing:5) {
                
                Button("0") {
                    mHandler.concatNumber(num: "0")
                    UIText = mHandler.handleUIText()
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(width:100, height:100)
                .foregroundColor(.white)
                .background(Color.gray)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Button("1") {
                    mHandler.concatNumber(num: "1")
                    UIText = mHandler.handleUIText()
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(width:100, height:100)
                .foregroundColor(.white)
                .background(Color.gray)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Button("2") {
                    mHandler.concatNumber(num: "2")
                    UIText = mHandler.handleUIText()
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(width:100, height:100)
                .foregroundColor(.white)
                .background(Color.gray)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Button("+") {
                    mHandler.addSign(sign: "+")
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(width:100, height:100)
                .foregroundColor(.white)
                .background(Color.orange)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            
            HStack(spacing:5) {
                Button("3") {
                    mHandler.concatNumber(num: "3")
                    UIText = mHandler.handleUIText()
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(width:100, height:100)
                .foregroundColor(.white)
                .background(Color.gray)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Button("4") {
                    mHandler.concatNumber(num: "4")
                    UIText = mHandler.handleUIText()
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(width:100, height:100)
                .foregroundColor(.white)
                .background(Color.gray)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Button("5") {
                    mHandler.concatNumber(num: "5")
                    UIText = mHandler.handleUIText()
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(width:100, height:100)
                .foregroundColor(.white)
                .background(Color.gray)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Button("-") {
                    mHandler.addSign(sign: "-")
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(width:100, height:100)
                .foregroundColor(.white)
                .background(Color.orange)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            
            HStack(spacing:5) {
                Button("6") {
                    mHandler.concatNumber(num: "6")
                    UIText = mHandler.handleUIText()
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(width:100, height:100)
                .foregroundColor(.white)
                .background(Color.gray)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Button("7") {
                    mHandler.concatNumber(num: "7")
                    UIText = mHandler.handleUIText()
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(width:100, height:100)
                .foregroundColor(.white)
                .background(Color.gray)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Button("7") {
                    mHandler.concatNumber(num: "8")
                    UIText = mHandler.handleUIText()
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(width:100, height:100)
                .foregroundColor(.white)
                .background(Color.gray)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                
                Button("/") {
                    mHandler.addSign(sign: "/")
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(width:100, height:100)
                .foregroundColor(.white)
                .background(Color.orange)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            
            HStack {
                Button("9") {
                    mHandler.concatNumber(num: "9")
                    UIText = mHandler.handleUIText()
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(width:100, height:100)
                .foregroundColor(.white)
                .background(Color.gray)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

                Button("x") {
                    mHandler.addSign(sign: "x")
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(width:100, height:100)
                .foregroundColor(.white)
                .background(Color.orange)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .offset(x:100)
                
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
