//
//  HomeView.swift
//  SIPExample
//
//  Created by Simon Zwicker on 20.11.23.
//

import SwiftUI

struct HomeView: View {

    var body: some View {
        NavigationSplitView {
            SIPNavigationView()
        } detail: {
            EmptyView()
        }

    }
}

#Preview {
    HomeView()
}
