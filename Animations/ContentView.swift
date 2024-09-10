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

            }.padding(50)
                .background(.red)
                .foregroundStyle(.white)
                .clipShape(.circle)
                .overlay(
                Circle()
                    .stroke(.red)
                    .scaleEffect(animationAmount)
                    .opacity(2-animationAmount)
                    .animation(
                        .easeOut(duration: 1)
                            .repeatForever(autoreverses: false)
                        ,value: animationAmount
                    )
                )
                .onAppear{
                    animationAmount = 2
                }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
