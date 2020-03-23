//
//  ContentView.swift
//  Calculator_SwiftUI
//
//  Created by 김시환 on 2020/03/18.
//  Copyright © 2020 My Home. All rights reserved.
//

import SwiftUI

struct GradientButtonStyle: ButtonStyle
{
    var buttonWidth: CGFloat=90
    var forgroundColor: Color = Color.gray
    
    func makeBody(configuration: Self.Configuration) -> some View
    {
        configuration.label
            .foregroundColor(Color.white)
            .frame(width:buttonWidth, height: 90)
            .background(configuration.isPressed ? Color.yellow : forgroundColor)
            .cornerRadius(20)
            .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
    }
}

struct ContentView: View
{
    @State var currentNumber =  "0"
    @State var firstNumber: Double = 0
    @State var Operand = 0 ;  // 1:+, 2:-, 3:X, 4:/
    @State var pointExist = false
    
    var displayString: String
    {
        return String(format: "%.2f", arguments:[currentNumber])
    }
    
    var body: some View
    {
    //    VStack(alignment: .trailing, spacing: 20)
        VStack
        {
            Text(currentNumber)
                .font(.largeTitle)
                .fontWeight(.bold)
                .lineLimit(3)
                .padding()
            
            HStack
            {
                Button(action: {  self.currentNumber = AccumulateValue(inputNum: 1, currentNum: self.currentNumber) })
                {
                    Text("AC")
                        .font(.title)
                        .fontWeight(.bold)

                }.buttonStyle(GradientButtonStyle(forgroundColor: Color.green))
                
                Button(action: {  self.currentNumber = AccumulateValue(inputNum: 2, currentNum: self.currentNumber) })
                {
                    Text("Pi")
                        .font(.title)
                        .fontWeight(.bold)

                }.buttonStyle(GradientButtonStyle(forgroundColor: Color.green))
                
                Button(action: {  self.currentNumber = AccumulateValue(inputNum: 1, currentNum: self.currentNumber) })
                {
                    Text("%")
                        .font(.title)
                        .fontWeight(.bold)

                }.buttonStyle(GradientButtonStyle(forgroundColor: Color.green))
                
                Button(action:
                {
                    self.Operand = 4 ;
                    self.firstNumber = Double(self.currentNumber)!
                    self.currentNumber = "0"
                    self.pointExist = false
                })
                {
                    Text("÷")
                        .font(.title)
                        .fontWeight(.black )

                }.buttonStyle(GradientButtonStyle(forgroundColor: Color.orange))
            }
            
            HStack
            {
                Button(action: {  self.currentNumber = AccumulateValue(inputNum: 7, currentNum: self.currentNumber) })
                {
                    Text("7")
                        .font(.title)
                        .fontWeight(.bold)

                }.buttonStyle(GradientButtonStyle())
                
                Button(action: {  self.currentNumber = AccumulateValue(inputNum: 8, currentNum: self.currentNumber) })
                {
                    Text("8")
                        .font(.title)
                        .fontWeight(.bold)

                }.buttonStyle(GradientButtonStyle())
                
                Button(action: {  self.currentNumber = AccumulateValue(inputNum: 9, currentNum: self.currentNumber) })
                {
                    Text("9")
                        .font(.title)
                        .fontWeight(.bold)

                }.buttonStyle(GradientButtonStyle())
                
                Button(action:
                {
                    self.Operand = 3 ;
                    self.firstNumber = Double(self.currentNumber)!
                    self.currentNumber = "0"
                    self.pointExist = false
                })
                {
                    Text("×")
                        .font(.title)
                        .fontWeight(.bold)

                }.buttonStyle(GradientButtonStyle(forgroundColor: Color.orange))
            }.padding()
            
            HStack
            {
                Button(action: {  self.currentNumber = AccumulateValue(inputNum: 4, currentNum: self.currentNumber) })
                {
                    Text("4")
                        .font(.title)
                        .fontWeight(.bold)

                }.buttonStyle(GradientButtonStyle())
                
                Button(action: {  self.currentNumber = AccumulateValue(inputNum: 5, currentNum: self.currentNumber) })
                {
                    Text("5")
                        .font(.title)
                        .fontWeight(.bold)

                }.buttonStyle(GradientButtonStyle())
                
                Button(action: {  self.currentNumber = AccumulateValue(inputNum: 6, currentNum: self.currentNumber) })
                {
                    Text("6")
                        .font(.title)
                        .fontWeight(.bold)

                }.buttonStyle(GradientButtonStyle())
                
                Button(action:
                {
                    self.Operand = 2 ;
                    self.firstNumber = Double(self.currentNumber)!
                    self.currentNumber = "0"
                    self.pointExist = false
                })
                {
                    Text("-")
                        .font(.title)
                        .fontWeight(.bold)

                }.buttonStyle(GradientButtonStyle(forgroundColor: Color.orange))
            }
                
            HStack
            {
                Button(action: {  self.currentNumber = AccumulateValue(inputNum: 1, currentNum: self.currentNumber) })
                {
                    Text("1")
                        .font(.title)
                        .fontWeight(.bold)

                }.buttonStyle(GradientButtonStyle())
                
                Button(action: {  self.currentNumber = AccumulateValue(inputNum: 2, currentNum: self.currentNumber) })
                {
                    Text("2")
                        .font(.title)
                        .fontWeight(.bold)

                }.buttonStyle(GradientButtonStyle())
                
                Button(action: {  self.currentNumber = AccumulateValue(inputNum: 3, currentNum: self.currentNumber) })
                {
                    Text("3")
                        .font(.title)
                        .fontWeight(.bold)

                }.buttonStyle(GradientButtonStyle())
                
                Button(action:
                {
                    self.Operand = 1 ;
                    self.firstNumber = Double(self.currentNumber)!
                    self.currentNumber = "0"
                    self.pointExist = false
                    
                })
                {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)

                }.buttonStyle(GradientButtonStyle(forgroundColor: Color.orange))
            }.padding()
            
            HStack
            {
                Button(action: {  self.currentNumber = AccumulateValue(inputNum: 0, currentNum: self.currentNumber) })
                {
                    Text("0")
                        .font(.title)
                        .fontWeight(.bold)

                }.buttonStyle(GradientButtonStyle(buttonWidth: 188))
                                
                Button(action:
                {
                    if (self.pointExist == false)
                    {
                        self.currentNumber += "."
                        self.pointExist = true
                    }
                    
                })
                {
                    Text(".")
                        .font(.title)
                        .fontWeight(.bold)

                }.buttonStyle(GradientButtonStyle())
                
                Button(action: {  self.currentNumber = AccumulateValue(inputNum: 2, currentNum: self.currentNumber) })
                {
                    Text("=")
                        .font(.title)
                        .fontWeight(.bold)

                }.buttonStyle(GradientButtonStyle(forgroundColor: Color.orange))
            }

        }.padding(32)
        

    }
}

func AccumulateValue(inputNum: Int, currentNum: String)->String
{
    var result: String
    
    if(currentNum == "0")
    {
        result = "" + String(inputNum)
    }
    else
    {
        result = currentNum + String(inputNum)
    }
    
    return result
}

func Calculate(first:Double, second:Double, operator:Int)->Double
{
    var result:Double
    
    switch(operator)
    {
    case 1: 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
