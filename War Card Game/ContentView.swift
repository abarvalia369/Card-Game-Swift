//
//  ContentView.swift
//  War Card Game
//
//  Created by Arpeet Barvalia on 9/6/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card12"
    @State var cpuCard = "card12"
    @State var playerScore = 2
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-cloth")
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
//                Image("button")
                Button{
                    dealCards()
                } label: {
                    Image("button")
                }
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    
                }
                .foregroundStyle(.white)
                .font(.headline)
                
                Spacer()
                
                Text("By: Arpeet Barvalia")
                    .foregroundStyle(.white)
                    
                
//                .padding(55)
            }
//            .padding(30)
                            
        }
        
        
    }
    
    func dealCards() {
        //Randomize card value
        let playerValue = Int.random(in: 2...14)
        let cpuValue = Int.random(in: 2...14)
        
        //Update card image
        playerCard = "card" + String(playerValue)
        cpuCard = "card" + String(cpuValue)
        
        // Calculate Score
        if playerValue > cpuValue {
            playerScore += 1
        }
        else if playerValue < cpuValue {
            cpuScore += 1
        }
        //Update score labels
    }
    
}

#Preview {
    ContentView()
}
