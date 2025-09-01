//
//  ContentView.swift
//  Elvis
//
//  Created by Eshaan Chatrath on 9/1/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "Peace"
    @State private var imageName = "peacesign"
    var body: some View {
        VStack {
            
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.black)
                .frame(width: 300, height: 300)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.purple)
            Spacer()
            
            HStack{
                Button("Peace") {
                    message = "Peace"
                    imageName = "peacesign"
                }
                Button("Love") {
                    message = "Love"
                    imageName = "heart"
                }
                Button("Understanding") {
                    message = "Understanding"
                    imageName = "lightbulb"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
