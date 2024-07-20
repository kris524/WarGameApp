//
//  ContentView.swift
//  WarGame
//
//  Created by Kristiyan Dilov on 20/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("logo")
            Spacer()
            
            HStack {
                Image("card2")
                Spacer()
                Image("card3")
            }
            Spacer()
            Image("button")
            Spacer()
            
            HStack {
                VStack {
                    Text("Player")
                        
                    Text("0")
                }.font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Spacer()
                VStack {
                    Text("CPU")
                       
                    Text("0")
                }.font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.trailing)
            }
                        
        }.background(Image("background-plain"))
            .padding()
    }
}
 
#Preview {
    ContentView()
}
