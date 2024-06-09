//
//  CustomBackgroundView.swift
//  hike_swiftui
//
//  Created by KS on 2024/06/10.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // Depth 3

            Color.customGreenDark
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 40, height: 40)))
                .offset(y: 8)

            // Light 2

            Color.customGreenLight
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 40, height: 40)))
                .offset(y: 4)
                .opacity(0.3)

            // Surface 1
            LinearGradient(
                colors:
                    [.customGreenLight,
                     .customGreenMedium],
                startPoint: .top,
                endPoint: .bottom)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 40, height: 40)))
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
