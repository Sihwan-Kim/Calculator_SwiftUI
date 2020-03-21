//
//  ContentView.swift
//  Calculator_SwiftUI
//
//  Created by 김시환 on 2020/03/18.
//  Copyright © 2020 My Home. All rights reserved.
//

import SwiftUI

struct NumberView: View
{
    let number: Double
    var numberString: String
    {
        if number == .pi
        {
            return "ℿ"
        }
        
        return String(Int(number))
    }
    
    var body: some View
    {
        Text(numberString)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(width:64, height: 64)
            .background(Color.blue)
            .cornerRadius(20)
            .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
    }
}

struct GradientButtonStyle: ButtonStyle
{
    var buttonWidth: CGFloat=64
    
    func makeBody(configuration: Self.Configuration) -> some View
    {
        configuration.label
            .foregroundColor(Color.white)
            .frame(width:buttonWidth, height: 64)
            .background(configuration.isPressed ? Color.yellow : Color.blue)
            .cornerRadius(90)
            .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
    }
}

struct ContentView: View
{
    @State var currentNumber: Double = 0
    @State var firstNumber = "0"
    var displayString: String
    {
        return String(format: "%.2f", arguments:[currentNumber])
    }
    
    var body: some View
    {
    //    VStack(alignment: .trailing, spacing: 20)
        VStack
        {
            Text(firstNumber)
                .font(.largeTitle)
                .fontWeight(.bold)
                .lineLimit(3)
                .padding()
                
            HStack
            {
                Button(action: {  self.firstNumber = AccumulateValue(inputNum: 1, currentNum: self.firstNumber) })
                {
                    Text("1")
                        .font(.title)
                        .fontWeight(.bold)

                }.buttonStyle(GradientButtonStyle(buttonWidth: 120))
                
                Button(action: {  self.firstNumber = AccumulateValue(inputNum: 2, currentNum: self.firstNumber) })
                {
                    Text("2")
                        .font(.title)
                        .fontWeight(.bold)

                }.buttonStyle(GradientButtonStyle())
                
            }
        }.padding(32)
        

    }
}

func AccumulateValue(inputNum: Int, currentNum: String)->String
{
    let temp = currentNum + String(inputNum)
    
    return temp
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
