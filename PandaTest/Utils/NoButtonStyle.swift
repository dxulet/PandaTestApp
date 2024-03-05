//
//  NoButtonStyle.swift
//  PandaTest
//
//  Created by Daulet Ashikbayev on 05.03.2024.
//

import SwiftUI

struct NoButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        return configuration.label
    }
}
