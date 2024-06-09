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
            LinearGradient(
                colors:
                    [Color("ColorGreenLight"),
                     Color("ColorGreenMedium")],
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
