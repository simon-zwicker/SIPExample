//
//  SIPExampleApp.swift
//  SIPExample
//
//  Created by Simon Zwicker on 20.11.23.
//

import SwiftUI

@main
struct SIPExampleApp: App {

    // MARK: - Properties
    @AppStorage("appVersion") var appVersion = "1.0"

    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
