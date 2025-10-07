//
//  JamieRuns.swift
//  HauntedStoryMode
//
//  Created by Jacobson, Machiah - Student on 10/6/25.
//

import SwiftUI

struct JamieRuns: View {
    var body: some View {
        ZStack {
            VStack {
                Text("You run until you hear a howl, then look back and realize that Jake is not behind you...")
                    .font(.custom("Times New Roman", size: 30,))
                    .padding(25)
                VStack {
                    Text("Option 1:")
                        .fontWeight(.bold)
                    Text("Continue to run until you reach the city")
                        .padding(.bottom)
                    Text("Option 2:")
                        .fontWeight(.bold)
                    Text("Run back and try and look for Jake")
                        .padding(.bottom)
                    
                }
                .font(.system(size: 33))
                .frame(width: 340, height: 320)
                .border(Color.black, width: 10)
                .cornerRadius(20)
                .padding(25)
                HStack {
                        NavigationLink(destination: Option1()) {
                            ZStack {
                            Image("Yellow")
                                .border(Color.black, width: 3)
                            Text("Option 1")
                                .foregroundStyle(.black)
                                .fontWeight(.bold)
                                .font(.custom("Times New Roman", size: 30,))
                        }
                    }
                            NavigationLink(destination: Option2()) {
                                ZStack {
                                Image("Yellow")
                                    .border(Color.black, width: 3)
                                Text("Option 2")
                                    .foregroundStyle(.black)
                                    .fontWeight(.bold)
                                    .font(.custom("Times New Roman", size: 26,))
                        }
                    }
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
    JamieRuns()
}
