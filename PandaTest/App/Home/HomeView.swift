//
//  ContentView.swift
//  PandaTest
//
//  Created by Daulet Ashikbayev on 03.03.2024.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()
    @State var showDetails = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Image(Constants.pandaImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: Constants.imageWidth,
                           height: geometry.size.height * Constants.heightMultiplier,
                           alignment: .leading)
                    .clipped()
                
                HStack(spacing: Constants.buttonSpacing) {
                    ActionButton(
                        action: {
                            viewModel.lockButtonPressed.toggle()
                            viewModel.updateLockButtonText()
                            viewModel.updateOpacity()
                        },
                        text: viewModel.lockButtonText)
                        .buttonStyle(NoButtonStyle())
                    
                    ActionButton(action: {
                        withAnimation(.easeInOut) {
                            showDetails.toggle()
                        }
                    }, text: Constants.openFromTop)
                    .disabled(viewModel.lockButtonPressed)
                    .opacity(viewModel.opacity)
                }
                
                Spacer()
                
                ActionButton(action: {},
                             text: Constants.openFull)
            }
            .padding()
        }
        .background(Color.gray.edgesIgnoringSafeArea(.all))
        .overlay(showDetails ? DetailsView(isPresented: $showDetails.animation()) : nil)
    }
}


#Preview {
    HomeView()
}


