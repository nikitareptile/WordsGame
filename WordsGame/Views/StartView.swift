//
//  StartView.swift
//  WordsGame
//
//  Created by Никита Тихонюк on 16.03.2023.
//

import SwiftUI

struct StartView: View {
    
    @State var startWord = ""
    @State var firstPlayerName = ""
    @State var secondPlayerName = ""
    
    @State var isShowingGame = false
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("Words Game")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            WordTextField(word: $startWord,
                          placeHolder: "Write start word")
            .padding(.top, 30)
            
            WordTextField(word: $firstPlayerName,
                          placeHolder: "First player")
            .padding(.top, 30)
            
            WordTextField(word: $secondPlayerName,
                          placeHolder: "Second player")
            
            Button {
                isShowingGame.toggle()
            } label: {
                Text("Start game")
                    .font(.title)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding(20)
                    .padding(.horizontal, 20)
                    .background(Color.black)
                    .cornerRadius(20)
                    .padding(.top, 50)
            }
            
            Spacer()
            
        }
        .padding()
        .fullScreenCover(isPresented: $isShowingGame) {
            GameView()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
