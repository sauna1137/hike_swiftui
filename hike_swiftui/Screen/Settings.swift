//
//  Settings.swift
//  hike_swiftui
//
//  Created by KS on 2024/06/12.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        List {
            // MARK: ヘッダー
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack(spacing: -5) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editors Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(LinearGradient(colors: [.customGreenLight,
                                                         .customGreenMedium,
                                                         .customGreenDark],
                                                startPoint: .top, endPoint: .bottom)
                )
                .padding(.top, 8)
                
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)

                    Text("the hiking is very good for everything. There is three reasons. 1. good health, 2. good mental, 3. feel nature")
                        .font(.footnote)
                        .italic()

                    Text("dust off boost! Its time to walk")
                        .fontWeight(.heavy)
                        .frame(maxWidth: .infinity)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
            } // ヘッダー
            .listRowSeparator(.hidden)
            // MARK:  アイコン

            // MARK: アバウト
        }
    }
}

#Preview {
    Settings()
}
