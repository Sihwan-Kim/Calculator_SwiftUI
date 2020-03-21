//
//  ContentView.swift
//  Calculator_SwiftUI
//
//  Created by 김시환 on 2020/03/18.
//  Copyright © 2020 My Home. All rights reserved.
//

import SwiftUI

struct ContentView: View
{
    @State var firstValue = "0"
    
    var body: some View
    {
        NavigationView
        {
            VStack
            {
                Form
                {
                    Text(firstValue)
                    .bold()
                    .font(.title)
                }.navigationBarTitle("Calculator")
                VStack
                {
                    HStack
                    {
                        Button("1")
                        {
                        
                        }
                        .frame(minWidth: 10, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.red)
                        
                        Button("2")
                        {
                            
                        }
                        Button("3")
                        {
                            
                        }
                    }
                    HStack
                    {
                        Button("3")
                        {
                        
                        }
                        .frame(minWidth: 10, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.red)
                        
                        Button("4")
                        {
                            
                        }
                        Button("5")
                        {
                            
                        }
                    }
                    HStack
                    {
                        Button("0")
                        {
                        
                        }
                        .frame(minWidth: 10, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.red)
                        
                        Button("1")
                        {
                            
                        }
                        Button("2")
                        {
                            
                        }
                    }
                }
            }
        }
    }
}

func AccumulateValue(inputNum: Int, currentNum: String)->String
{
    var temp = " "
    
    return temp
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
