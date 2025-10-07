//
//  ChooseCharacter.swift
//  HauntedStoryMode
//
//  Created by Jacobson, Machiah - Student on 10/6/25.
//

import SwiftUI

struct ChooseCharacter: View {
    var body: some View {
        ZStack {
            VStack {
                Text("The two boys see a blue glow coming from the  cabin in the distance...")
                    .font(.custom("Times New Roman", size: 30))
                    .padding()
                Text("Choose Your Character:")
                    .font(.custom("Times New Roman", size: 40,))
                HStack {
                    VStack {
                        Text("Jamie:")
                            .font(.title)
                        NavigationLink(destination: JamieRuns()) {
                            Image("Boy 1")
                                .resizable()
                                .aspectRatio(contentMode: ContentMode.fill)
                                .border(Color.black, width: 5)
                                .buttonStyle(PlainButtonStyle())
                        }
                        Text("Runs away without hesitation")
                            .font(.system(size: 23))
                    }
                    .frame(width: 100, height: 400)
                    .padding(40)
                    VStack {
                        Text("Jake:")
                            .font(.title)
                        NavigationLink(destination: JakeWalkesCabin()) {
                            Image("Boy 2")
                                .resizable()
                                .aspectRatio(contentMode: ContentMode.fill)
                                .border(Color.black, width: 5)
                                .buttonStyle(PlainButtonStyle())
                        }
                        Text("Starts walking tords the cabin")
                    }
                    .font(.system(size: 23))
                    .frame(width: 100, height: 400)
                    .padding(40)
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
    ChooseCharacter()
}
