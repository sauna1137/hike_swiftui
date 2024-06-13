//
//  CustomListRowView.swift
//  hike_swiftui
//
//  Created by KS on 2024/06/13.
//

import SwiftUI

struct CustomListRowView: View {

    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil

    var body: some View {
        LabeledContent {
            if rowLinkLabel != nil && rowLinkDestination != nil {
                Link(rowLinkLabel!, destination: URL(string: rowLinkDestination!)!)
            }
            Text(rowContent ?? "")
                .foregroundStyle(Color(.black))
                .fontWeight(.heavy)
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerSize: CGSize(width: 8, height: 8))
                        .frame(width: 30, height: 30)
                        .foregroundStyle(Color(rowTintColor))
                    Image(systemName: rowIcon)
                        .foregroundStyle(Color(.white))
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List() {
        CustomListRowView(rowLabel: "Designer",
                          rowIcon: "paintpallette",
                          rowContent: "john doe",
                          rowTintColor: .pink, rowLinkLabel: "aaa", rowLinkDestination: "https://www.udemy.com/course/swiftui-masterclass-course-ios-development-with-swift/learn/lecture/38673518#overview")
    }
}
