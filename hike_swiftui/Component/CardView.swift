//
//  CardView.swift
//  hike_swiftui
//
//  Created by KS on 2024/06/10.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                LinearGradient(colors: [Color("ColorIndigoMedium"),
                                        Color("ColorSarmon")], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 256, height: 256)

            Image("image-1")
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    CardView()
}
