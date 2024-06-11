//
//  GradientButtonStyle.swift
//  hike_swiftui
//
//  Created by KS on 2024/06/11.
//

import Foundation
import SwiftUI

struct GradientButtonStyle: ButtonStyle {

    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed ?
                LinearGradient(colors: [.customGrayLight,
                                        .customGrayMedium],
                               startPoint: .top, endPoint: .bottom) :
                LinearGradient(colors: [.customGrayMedium,
                                .customGrayLight],
                       startPoint: .top, endPoint: .bottom))

        .clipShape(Capsule())
    }
}
