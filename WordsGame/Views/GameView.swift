//
//  GameView.swift
//  WordsGame
//
//  Created by Никита Тихонюк on 16.03.2023.
//

import SwiftUI

struct GameView: View {
    
    @State private var startWord = ""
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            HStack {
                Button {
                    print("")
                } label: {
                    Image(systemName: "multiply.circle")
                    Text("End game")
                }
                
                Button {
                    print("")
                } label: {
                    Image(systemName: "lightbulb.circle")
                        .padding(.leading, 20)
                    Text("How to play")
                }
            }
            .padding(.top, 10)
            
            Divider()
            
            Text("StartWord")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Divider()
            
            HStack(spacing: 20) {
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 3)
                        .frame(width: screenSize.width / 2.4, height: screenSize.width / 2.4)
                    VStack{
                        Text("0")
                            .font(.system(size: 60))
                            .fontWeight(.bold)
                            .padding(-6)
                        Text("FirstPlayer")
                            .padding(4)
                            .frame(maxWidth: screenSize.width / 2.4 - 16)
                            .lineLimit(1)
                    }
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 3)
                        .frame(width: screenSize.width / 2.4, height: screenSize.width / 2.4)
                    VStack{
                        Text("0")
                            .font(.system(size: 60))
                            .fontWeight(.bold)
                            .padding(-6)
                        Text("SecondPlayer")
                            .padding(4)
                            .frame(maxWidth: screenSize.width / 2.4 - 16)
                            .lineLimit(1)
                    }
                }
                
            }
            
            WordTextField(word: $startWord, placeHolder: "Write your word...")
                .padding(.horizontal, 21.8)
            
            Button {
                print("")
                self.startWord = ""
            } label: {
                Text("Send word")
                    .font(.title2)
                    .padding(20)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .cornerRadius(20)
                    .padding(.horizontal, 20)
            }
            
            List {
                
            }
            .listStyle(.plain)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
        
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
