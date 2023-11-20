//
//  BulletList.swift
//  SIPExample
//
//  Created by Simon Zwicker on 20.11.23.
//

import SwiftUI

struct BulletList: View {

    let listItems: [String]

    var body: some View {
        VStack(alignment: .leading) {
            ForEach(listItems, id: \.self) { item in
                HStack {
                    Image(systemName: "checkmark.circle")
                        .foregroundStyle(.green)
                        .font(.title3)
                    Text(LocalizedStringResource(stringLiteral: item))
                        .font(.headline)
                }
            }
        }
    }
}

#Preview {
    BulletList(listItems: ["First", "Second", "Third"])
}
