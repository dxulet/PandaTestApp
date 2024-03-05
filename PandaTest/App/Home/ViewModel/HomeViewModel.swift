//
//  HomeViewModel.swift
//  PandaTest
//
//  Created by Daulet Ashikbayev on 04.03.2024.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var lockButtonPressed = false
    @Published var opacity = Constants.buttonOpacity
    @Published var lockButtonText = Constants.lock
    
    func updateLockButtonText() {
        withAnimation(.easeInOut(duration: 0.25)) {
            lockButtonText = lockButtonPressed ? Constants.unlock : Constants.lock
        }
    }
    
    func updateOpacity() {
        withAnimation(.easeInOut) {
            opacity = lockButtonPressed ? Constants.buttonDisabledOpacity : Constants.buttonOpacity
        }
    }
}
