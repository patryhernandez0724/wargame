//
//  ContentView.swift
//  War Card Game
//
//  Created by Patricia on 8/27/24.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card2"
    @State var cpuCard = "card13"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
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
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
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
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        
                        Text("CPU")
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
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
        //Randomize the players card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        // Randomize de cpu cars
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        // update the score
        if playerCardValue > cpuCardValue{
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue{
            cpuScore += 1
        }
        else{
        playerScore += 1
            cpuScore += 1
        }
    }
}
#Preview {
    ContentView()
}

