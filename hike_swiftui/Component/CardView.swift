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
            CustomBackgroundView()
            VStack {
                // Header
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
                            )

                        Spacer()

                        Button {
                            // action sheet
                            print("tapped")
                        } label: {
                            CustomButtonView()
                        }
                    }

                    Text("Fun and enjoynable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundStyle(.colorGrayMedium)
                } // end header
                .padding(.horizontal, 30)

                // Main Content

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
                // footer

                Button() {
                    print("tapped")
                } label: {
                    Text("Explore more")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.customGreenLight,
                                                    .customGreenMedium],
                                           startPoint: .top, endPoint: .bottom))
                        .shadow(color: .black.opacity(0.5), radius: 0.25, x: 2, y: 2)
                }
                .buttonStyle(GradientButtonStyle())
            }
        } // card
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
