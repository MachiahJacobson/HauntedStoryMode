//
//  Option5.swift
//  HauntedStoryMode
//
//  Created by Jacobson, Machiah - Student on 10/7/25.
//

import SwiftUI

struct Option5: View {
    @Environment(NameChoice.self) var nameChoice
    @State var name: String = ""
    @State var correctAnswer: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Text("You try and open the box but it has a lock on it...")
                    .font(.custom("Times New Roman", size: 30,))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 70)
                    .padding(.bottom, 100)
                Text("Answer to continue:")
                    .font(.custom("Times New Roman", size: 20,))
                Text("What was the name of the your friend that ran away from the start")
                    .font(.custom("Times New Roman", size: 25,))
                TextField("Answer", text: $name)
                
                    .textFieldStyle(.roundedBorder)
                    .font(.title2)
                    .padding(.trailing)
                    .padding(.leading)
                    .padding(.bottom, 300)
                    .onSubmit {
                        if name == nameChoice.name {
                            correctAnswer = true
                        }
                    }
                if correctAnswer {
                    NavigationLink(destination: Option3()) {
                        Text("Continue")
                            .font(.custom("Times New Roman", size: 20,))
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 200, height: 50)
                            .background(Color.blue)
                            .cornerRadius(1)
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
    @Previewable @State var nameChoice = NameChoice()
    Option5()
        .environment(nameChoice)

}
