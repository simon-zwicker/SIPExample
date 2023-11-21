//
//  Menu.swift
//  SIPExample
//
//  Created by Simon Zwicker on 20.11.23.
//

import Foundation
import SwiftUI

enum Menu: Hashable, CaseIterable {
    case introduction
    case sipInRealLife
    case sipTechnical
    case tracingCalls
    case dataTransfer
    case futureOfTelephony
    case sipGuide
    case dataTransferGuide

    var icon: String {
        switch self {
        case .introduction: "megaphone"
        case .sipInRealLife: "person.line.dotted.person"
        case .sipTechnical: "phone.arrow.up.right"
        case .tracingCalls: "rectangle.and.text.magnifyingglass"
        case .dataTransfer: "shippingbox.and.arrow.backward"
        case .futureOfTelephony: "timelapse"
        case .sipGuide: "arkit"
        case .dataTransferGuide: "arkit"
        }
    }

    var title: String {
        switch self {
        case .introduction: "menu_title_introduction"
        case .sipInRealLife: "menu_title_sip_reallife"
        case .sipTechnical: "menu_title_sip_technical"
        case .tracingCalls: "menu_title_tracing_calls"
        case .dataTransfer: "menu_title_data_transfer"
        case .futureOfTelephony: "menu_title_future_telephony"
        case .sipGuide: "menu_title_sip_guide"
        case .dataTransferGuide: "menu_title_data_transfer_guide"
        }
    }

    var section: Int {
        switch self {
        case .sipGuide, .dataTransferGuide: 1
        default: 0
        }
    }

    @ViewBuilder 
    var view: some View {
        switch self {
        case .introduction: IntroductionView()
        case .sipInRealLife: SIPReallifeView()
        case .sipTechnical: EmptyView()
        case .tracingCalls: EmptyView()
        case .dataTransfer: EmptyView()
        case .futureOfTelephony: EmptyView()
        case .sipGuide: EmptyView()
        case .dataTransferGuide: EmptyView()
        }
    }
}
