//
//  SIPNavigationView.swift
//  SIPExample
//
//  Created by Simon Zwicker on 20.11.23.
//

import SwiftUI

struct SIPNavigationView: View {

    var body: some View {
        List {
            Section("menu_section_lessons") {
                ForEach(Menu.allCases.filter { $0.section == 0}, id: \.self) { menuItem in
                    NavigationLink(destination: MenuDetailView(detail: menuItem)) {
                        Label(
                            title: {
                                Text(LocalizedStringResource(stringLiteral: menuItem.title))
                            },
                            icon: {
                                Image(systemName: menuItem.icon)
                                    .font(.system(size: 14.0, weight: .bold))
                                    .foregroundColor(.indigo)
                            }
                        )
                    }
                }
            }

            Section("menu_section_ar") {
                ForEach(Menu.allCases.filter { $0.section == 1}, id: \.self) { menuItem in
                    NavigationLink(destination: MenuDetailView(detail: menuItem)) {
                        Label(
                            title: {
                                Text(LocalizedStringResource(stringLiteral: menuItem.title))
                            },
                            icon: {
                                Image(systemName: menuItem.icon)
                                    .font(.system(size: 14.0, weight: .bold))
                                    .foregroundColor(.indigo)
                            }
                        )
                    }
                }
            }
        }
        .navigationTitle(Text("navigation_title_app"))
    }
}
