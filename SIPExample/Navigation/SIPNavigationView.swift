//
//  SIPNavigationView.swift
//  SIPExample
//
//  Created by Simon Zwicker on 20.11.23.
//

import SwiftUI

struct SIPNavigationView: View {

    @State var selected: Menu?

    var body: some View {
        List {
            Section("menu_section_lessons") {
                ForEach(Menu.allCases.filter { $0.section == 0}, id: \.self) { menuItem in
                    NavigationLink(value: menuItem) {
                        Label(
                            title: { Text(LocalizedStringResource(stringLiteral: menuItem.title)) },
                            icon: { Image(systemName: menuItem.icon) }
                        )
                    }
                    .onTapGesture(perform: {
                        self.selected = menuItem
                    })
                    .listRowBackground(self.selected == menuItem ? Color.green : Color.clear)
                }
            }

            Section("menu_section_ar") {
                ForEach(Menu.allCases.filter { $0.section == 1}, id: \.self) { menuItem in
                    NavigationLink(value: menuItem) {
                        Label(
                            title: { Text(LocalizedStringResource(stringLiteral: menuItem.title)) },
                            icon: { Image(systemName: menuItem.icon) }
                        )
                    }
                    .onTapGesture(perform: {
                        self.selected = menuItem
                    })
                    .listRowBackground(self.selected == menuItem ? Color.green : Color.clear)
                }
            }
        }
        .navigationDestination(for: Menu.self, destination: { menu in
            MenuDetailView(detail: menu)
        })
        .navigationTitle(Text("navigation_title_app"))
    }
}
