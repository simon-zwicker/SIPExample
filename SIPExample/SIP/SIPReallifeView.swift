//
//  SIPReallifeView.swift
//  SIPExample
//
//  Created by Simon Zwicker on 20.11.23.
//

import SwiftUI

struct SIPReallifeView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 25.0, content: {
            Text("explanation_sip_reallife_1")
            Text("explanation_sip_reallife_2")

            SIPReallifeSlides()

            Text("explanation_sip_reallife_3")
        })
        .padding()
    }
}

#Preview {
    SIPReallifeView()
}
