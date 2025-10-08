//
//  Option3.swift
//  HauntedStoryMode
//
//  Created by Jacobson, Machiah - Student on 10/6/25.
//

import SwiftUI

struct Option3: View {
    var body: some View {
        ZStack {
            VStack {
                Text("Inside the box is a key and a treasure map, you go on the adventure, and find the lost tresure!!!")
                    .font(.custom("Times New Roman", size: 30,))
                    .padding(.horizontal, 84)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 40)
                Image("TresureBox")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .padding()
                    .border(Color.black, width: 9)
                    .padding(.bottom, 40)
                NavigationLink(destination: ContentView()) {
                    Rectangle()
                        .frame(width: 150, height: 50)
                        .foregroundColor(.black)
                        .cornerRadius(25)
                        .overlay(
                            Text("Restart")
                                
                                .foregroundColor(.white)
                        )
                }
            }
        }
        .onAppear {
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("myYellow")
            .resizable())
        .ignoresSafeArea()
    }
}

#Preview {
    Option3()
}
