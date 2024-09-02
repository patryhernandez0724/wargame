//
//  ContentView.swift
//  War Card Game
//
//  Created by Patricia on 8/27/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
        Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
            
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        
                        Text("Player")
                            .padding(.bottom, 10.0)
                                              Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        
                        Text("CPU")
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                   
                }
                Spacer()
                
                    .font(.headline)
                    
            }
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
                
        }
       
    }
    
    func deal(){
       print("Deal cards")
    }
}

#Preview {
    ContentView()
}
