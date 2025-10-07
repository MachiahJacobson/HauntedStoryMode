//
//  ContentView.swift
//  HauntedStoryMode
//
//  Created by Jacobson, Machiah - Student on 10/6/25.
//

import SwiftUI

@Observable
class NameChoice {
    var name: String = ""
}

struct ContentView: View {
    @State var nameChoice: NameChoice = NameChoice()

    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("Jack and Jamie decide to take a shortcut home through the woods after a party...")
                        .font(.custom("Times New Roman", size: 30))
                        .padding()
                    VStack {
                        Image("TwoBoys")
                            .resizable()
                            .frame(width: 300, height: 300)
                            .padding()
                            .border(Color.black, width: 9)
                    }
                    NavigationLink("Go into the Woods") {
                        ChooseCharacter()
                    }
                    .padding(.top, 20)

                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("myYellow")
                .resizable())
            .ignoresSafeArea()
            .environment(nameChoice)
        }
    }
}

#Preview {
    @Previewable @State var nameChoice = NameChoice()
    ContentView()
        .environment(nameChoice)
}
