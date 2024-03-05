//
//  DetailsView.swift
//  PandaTest
//
//  Created by Daulet Ashikbayev on 04.03.2024.
//

import SwiftUI

struct DetailsView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .topTrailing) {
                Image(Constants.pandaImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: geo.size.width,
                           height: geo.size.height,
                           alignment: .leading)
                
                Button(action: {
                    withAnimation(.easeInOut) {
                        isPresented.toggle()
                    }
                    
                }) {
                    Image(systemName: Constants.closeButtonImage)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: Constants.closeButtonSize)
                        .background(Circle().fill(Color.gray))
                }
                .padding(.trailing, 20)
                .padding(.top, 40)
            }
        }
        .ignoresSafeArea()
        .transition(.move(edge: .top))
    }
}

#Preview {
    DetailsView(isPresented: .constant(true))
}

