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
            Section(
                header: Text("About the app"),
                footer: HStack {
                    Spacer()
                    Text("Copyright All reversed.")
                    Spacer()
                }
                    .padding(.vertical, 8)
            ) {
                // 1 Basic
//                LabeledContent("Application", value: "Hike")

                // 2 advance
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)

                CustomListRowView(rowLabel: "Compatibity", rowIcon: "info.circle", rowContent: "iOS", rowTintColor: .red)

                CustomListRowView(rowLabel: "Tech", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)

                CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "setting", rowTintColor: .secondary)

                CustomListRowView(rowLabel: "Dev", rowIcon: "info", rowContent: "Johe Doe", rowTintColor: .mint)

                CustomListRowView(rowLabel: "web", rowIcon: "globe", rowTintColor: .blue, rowLinkLabel: "web", rowLinkDestination: "https://www.udemy.com/course/swiftui-masterclass-course-ios-development-with-swift/learn/lecture/38673518#overviewh")
            }
        }
    }
}

#Preview {
    Settings()
}
