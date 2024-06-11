//
//  MotionAnimationView.swift
//  hike_swiftui
//
//  Created by KS on 2024/06/12.
//

import SwiftUI

struct MotionAnimationView: View {

    @State private var randomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimating: Bool = false
    // 座標
    func randomCoordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }

    // circleサイズ
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 4...80))
    }

    // スケール
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }

    // スピード
    func randomSpeed() -> Double {
        return Double.random(in: 0.05...1.0)
    }

    // ディレイ
    func randomDeley() -> Double {
        return Double.random(in: 0.05...2)
    }


    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundStyle(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(CGPoint(x: randomCoordinate(),
                                      y: randomCoordinate()))
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .onAppear(perform: {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDeley())
                        ) {
                            isAnimating = true
                        }
                    })
            }


        } // z stack
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup()
    }
}

#Preview {
    MotionAnimationView()
        .background {
            Circle()
                .fill(.teal)
        }
}
