//
//  SIPReallifeSlides.swift
//  SIPExample
//
//  Created by Simon Zwicker on 20.11.23.
//

import SwiftUI

struct SIPReallifeSlides: View {
    var body: some View {
        TabView {
            ForEach(ReallifeSlide.allCases, id: \.self) { slide in
                VStack(spacing: 15.0) {
                    Text(LocalizedStringResource(stringLiteral: slide.title))
                        .font(.system(size: 18.0, weight: .bold))

                    Image(slide.image)
                        .resizable()
                        .scaledToFit()

                    Text(LocalizedStringResource(stringLiteral: slide.description))
                }
            }
        }
        .tabViewStyle(.page)
        .frame(height: 400.0)
    }
}

#Preview {
    SIPReallifeSlides()
}
