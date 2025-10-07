//
//  JakeWalkesCabin.swift
//  HauntedStoryMode
//
//  Created by Jacobson, Machiah - Student on 10/6/25.
//

import SwiftUI

struct JakeWalkesCabin: View {
    var body: some View {
        ZStack {
            VStack {
                
                Text("Jake walks into the cabin, there is a glowing box in the middle of the room...")
                    .font(.custom("Times New Roman", size: 30,))
                    .padding(25)
                NavigationLink(destination: Option3()) {
                    ZStack {
                        Image("Yellow")
                            .border(Color.black, width: 3)
                        Text("Open the box")
                            .foregroundStyle(.black)
                            .fontWeight(.bold)
                            .font(.custom("Times New Roman", size: 30,))
                    }
                }
                NavigationLink(destination: Option4()) {
                    ZStack {
                        Image("Yellow")
                            .border(Color.black, width: 3)
                        Text("Run back home")
                            .foregroundStyle(.black)
                            .fontWeight(.bold)
                            .font(.custom("Times New Roman", size: 30,))
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
    JakeWalkesCabin()
}
