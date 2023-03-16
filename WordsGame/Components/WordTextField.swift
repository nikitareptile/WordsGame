//
//  WordTextField.swift
//  WordsGame
//
//  Created by Никита Тихонюк on 16.03.2023.
//

import SwiftUI

struct WordTextField: View {
    
    @State var word: Binding<String>
    var placeHolder: String
    
    var body: some View {
        
        TextField(placeHolder,
                  text: word)
            .font(.title2)
            .padding(20)
            .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 3)
            )
    }
    
}
