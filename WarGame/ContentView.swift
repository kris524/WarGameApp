//
//  ContentView.swift
//  WarGame
//
//  Created by Kristiyan Dilov on 20/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    var playerCard = "card7"
    var cpuCard = "card8"
    
    var playerScore = 0
    var cpuScore = 0
    
    var body: some View {
        

        VStack {
            Image("logo")
            Spacer()
            
            HStack {
                
                Image(playerCard)
                Spacer()
                Image(cpuCard)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Spacer()
                
            Button{ 
                deal()
            }
            label: {
                Image("button")
            }
            Spacer()
            
            HStack() {
                VStack {
                    Text("Player")
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        
                    Text("\(playerScore)")
                }.font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Spacer()
                VStack {
                    Text("CPU")
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    Text("\(cpuScore)")
                }.font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.trailing)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        
        }.background(Image("background-plain"))
            .padding()
    }
    
    func deal () {
        print("ASD")
    }
}
 
#Preview {
    ContentView()
}
