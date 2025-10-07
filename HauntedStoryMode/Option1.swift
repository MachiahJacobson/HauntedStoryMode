//
//  Option1.swift
//  HauntedStoryMode
//
//  Created by Jacobson, Machiah - Student on 10/6/25.
//

import SwiftUI

struct Option1: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Text("You reach the city safely but you dont see jack come out after waiting hours, so you set out a police report for a missing person. You never saw Jake again")
                    .font(.custom("Times New Roman", size: 30,))
                    .padding(.horizontal, 90)
                    .multilineTextAlignment(.center)
                Spacer()
                NavigationLink(destination: ContentView()) {
                    Rectangle()
                        .frame(width: 150, height: 50)
                        .foregroundColor(.black)
                        .cornerRadius(25)
                        .overlay(
                            Text("Restart")
                               
                                .foregroundColor(.white)
                        )
                        .padding(.bottom, 105)
                }
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("myYellow")
            .resizable())
        .ignoresSafeArea()
    }
}

#Preview {
    Option1()
}
