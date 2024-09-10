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
//                animationAmount += 1
            }.padding(50)
                .background(.red)
                .foregroundStyle(.white)
                .clipShape(.circle)
//                .scaleEffect(animationAmount)
//                .blur(radius: (animationAmount - 1 ) * 1.05)
//
//                .animation(.default, value: animationAmount)
//                .animation(.spring(duration: 1, bounce: 0.9), value: animationAmount)
//                .animation(.easeInOut(duration: 2), value: animationAmount)
                .overlay(
                Circle()
                    .stroke(.red)
                    .scaleEffect(animationAmount)
                    .opacity(2-animationAmount)
                    .animation(
                        .easeOut(duration: 1)
    //                    .delay(1)
    //                        .repeatCount(3, autoreverses: true)
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
