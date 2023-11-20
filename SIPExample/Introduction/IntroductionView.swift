//
//  IntroductionView.swift
//  SIPExample
//
//  Created by Simon Zwicker on 20.11.23.
//

import SwiftUI

struct IntroductionView: View {
    let bullets: [String] = [
        "bullet_introduction_1",
        "bullet_introduction_2",
        "bullet_introduction_3",
        "bullet_introduction_4"
    ]

    var body: some View {
        VStack(alignment: .leading, spacing: 25.0, content: {
            BulletList(listItems: bullets)

            Text("explanation_introduction_1")
            Text("explanation_introduction_2")
        })
    }
}

#Preview {
    IntroductionView()
}
