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
            Color(.systemGreen)
                .ignoresSafeArea()
            VStack(spacing: 40.0) {
                Image("logo")
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                Image("button")
                HStack{
                    Spacer()
                    Text("Player")
                    Spacer()
                    Text("CPU")
                    Spacer()
                }
                HStack{
                    Spacer()
                    Text("0")
                    Spacer()
                    Text("0")
                    Spacer()
                }
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
            }
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
                
        }
       
    }
}

#Preview {
    ContentView()
}
