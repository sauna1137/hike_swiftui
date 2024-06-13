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
    @State var rowContent: String
    @State var rowTintColor: Color

    var body: some View {
        LabeledContent {
            Text(rowContent)
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
                          rowTintColor: .pink)
    }
}
