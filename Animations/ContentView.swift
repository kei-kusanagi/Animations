//
//  ContentView.swift
//  Animations
//
//  Created by Juan Carlos Robledo Morales on 10/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        VStack {
            Button("Tap me"){
                animationAmount += 1
            }.padding(50)
                .background(.red)
                .foregroundStyle(.white)
                .clipShape(.circle)
                .scaleEffect(animationAmount)
                .blur(radius: (animationAmount - 1 ) * 1.05)
                .animation(.default, value: animationAmount)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
