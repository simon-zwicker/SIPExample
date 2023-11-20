//
//  MenuDetailView.swift
//  SIPExample
//
//  Created by Simon Zwicker on 20.11.23.
//

import SwiftUI

struct MenuDetailView: View {

    let detail: Menu

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 30.0) {
                Image(systemName: detail.icon)
                    .font(.system(size: 32.0))
                    .padding(20.0)
                    .foregroundColor(.white)
                    .background(Color.indigo)
                    .cornerRadius(20.0)
                
                detail.view
            }
            .padding()
        }
        .navigationTitle(Text(LocalizedStringResource(stringLiteral: detail.title)))
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    MenuDetailView(detail: .introduction)
}
