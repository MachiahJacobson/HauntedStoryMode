//
//  Option4.swift
//  HauntedStoryMode
//
//  Created by Jacobson, Machiah - Student on 10/6/25.
//

import SwiftUI

struct Option4: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Text("You make it home safely, but sometimes you can still here that faint howl from deep inside the woods.")
                    .font(.custom("Times New Roman", size: 30,))
                    .padding(.horizontal, 101)
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
                        .padding(.bottom, 150)
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
    Option4()
}
