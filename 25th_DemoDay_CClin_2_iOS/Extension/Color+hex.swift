//
//  Color+hex.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/12.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
    
    static let main_club = Color(hex: "F27953")
    static let main_company =  Color(hex: "3E3EFE")
    static let tag =  Color(hex: "DF2020")
    static let gray_bottom =  Color(hex: "F3F3F3")
    static let gray_icon =  Color(hex: "DADADA")
    static let gray_text =  Color(hex: "898989")
    static let gray_button_line =  Color(hex: "EFEFEF")
    static let gray_bottom_text =  Color(hex: "A6A6A6")
}
