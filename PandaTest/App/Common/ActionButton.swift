//
//  ActionButton.swift
//  PandaTest
//
//  Created by Daulet Ashikbayev on 04.03.2024.
//

import SwiftUI

struct ActionButton: View {
    
    var action: (() -> Void)?
    var text: String
    
    
    var body: some View {
        
        Button(action: {
            action?()
        }) {
            Text(text)
                .font(.system(size: Constants.buttonFontSize, design: .rounded))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, minHeight: Constants.buttonHeight)
                .background(Color.blue)
                .cornerRadius(Constants.buttonCornerRadius)
                .overlay(
                    RoundedRectangle(cornerRadius: Constants.buttonCornerRadius)
                        .stroke(Color.indigo, lineWidth: Constants.buttonStrokeWidth)
                )
        }
    }
}

#Preview {
    ActionButton(action: nil, text: Constants.lock)
}
