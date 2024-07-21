//
//  ContentView.swift
//  WarGame
//
//  Created by Kristiyan Dilov on 20/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card8"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        VStack {
            Image("logo")
            Spacer()
            
            HStack {
                Image(playerCard)
                Spacer()
                Image(cpuCard)
            }
            .padding(/*@START_MENU_TOKEN@*/ .all/*@END_MENU_TOKEN@*/)
            Spacer()
                
            Button {
                deal()
            }
            label: {
                Image("button")
            }
            Spacer()
            
            HStack {
                VStack {
                    Text("Player")
                        .padding(/*@START_MENU_TOKEN@*/ .all/*@END_MENU_TOKEN@*/)
                        
                    Text("\(playerScore)")
                }.font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Spacer()
                VStack {
                    Text("CPU")
                        .padding(/*@START_MENU_TOKEN@*/ .all/*@END_MENU_TOKEN@*/)
                    Text("\(cpuScore)")
                }.font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.trailing)
            }
            .padding(/*@START_MENU_TOKEN@*/ .all/*@END_MENU_TOKEN@*/)
                        
        }.background(Image("background-plain"))
            .padding()
    }
    
    func deal() {
        var num = Int.random(in:2...14)
        playerCard = "card" + String(num)
        print(playerCard)
        
        
        var cpu_num = Int.random(in:2...14)
        cpuCard = "card" + String(cpu_num)
        print(cpuCard)
        
        if cpu_num > num {
            cpuScore+=1
        }
        else if cpu_num < num {
            playerScore+=1
        }

    }
}
 
#Preview {
    ContentView()
}
