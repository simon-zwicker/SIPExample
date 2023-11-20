//
//  ReallifeSlide.swift
//  SIPExample
//
//  Created by Simon Zwicker on 20.11.23.
//

enum ReallifeSlide: CaseIterable {
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight

    var title: String {
        switch self {
        case .one: "slide_1_title"
        case .two: "slide_2_title"
        case .three: "slide_3_title"
        case .four: "slide_4_title"
        case .five: "slide_5_title"
        case .six: "slide_6_title"
        case .seven: "slide_7_title"
        case .eight: "slide_8_title"
        }
    }

    var image: String {
        switch self {
        case .one: "Slide1"
        case .two: "Slide2"
        case .three: "Slide3"
        case .four: "Slide4"
        case .five: "Slide5"
        case .six: "Slide6"
        case .seven: "Slide7"
        case .eight: "Slide8"
        }
    }

    var description: String {
        switch self {
        case .one: "slide_1_desc"
        case .two: "slide_2_desc"
        case .three: "slide_3_desc"
        case .four: "slide_4_desc"
        case .five: "slide_5_desc"
        case .six: "slide_6_desc"
        case .seven: "slide_7_desc"
        default: ""
        }
    }
}
