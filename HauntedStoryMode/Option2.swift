//
//  Option2.swift
//  HauntedStoryMode
//
//  Created by Jacobson, Machiah - Student on 10/6/25.
//

import SwiftUI

struct Option2: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Text("You go back to try and find Jake and get attacked and eaten by a mountain lion")
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
        .ignoresSafeArea()    }
}

#Preview {
    Option2()
}
