//
//  JakeWalkesCabin.swift
//  HauntedStoryMode
//
//  Created by Jacobson, Machiah - Student on 10/6/25.
//

import SwiftUI

struct JakeWalkesCabin: View {
    @Environment(NameChoice.self) var nameChoice

    var body: some View {
        ZStack {
            VStack {
                
                Text("Jake walks into the cabin, there is a glowing box in the middle of the room...")
                    .font(.custom("Times New Roman", size: 36,))
                    .padding(30)
                    .padding(.bottom, 100)
                NavigationLink(destination: Option5()) {
                    ZStack {
                        Image("Yellow")
                            .resizable()
                            .border(Color.black, width: 3)
                            .frame(width: 280, height: 100)
                        Text("Try opening the box")
                            .foregroundStyle(.black)
                            .fontWeight(.bold)
                            .font(.custom("Times New Roman", size: 30,))
                    }
                    .padding(.bottom, 30)
                }
                NavigationLink(destination: Option4()) {
                    ZStack {
                        Image("Yellow")
                            .resizable()
                            .border(Color.black, width: 3)
                            .frame(width: 280, height: 100)
                        Text("Run back home")
                            .foregroundStyle(.black)
                            .fontWeight(.bold)
                            .font(.custom("Times New Roman", size: 30,))
                    }
                }
            }
            .onAppear {
                nameChoice.name = "Jamie"
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("myYellow")
            .resizable())
        .ignoresSafeArea()
    }
}

#Preview {
    @Previewable @State var nameChoice = NameChoice()
    JakeWalkesCabin()
        .environment(nameChoice)
}
