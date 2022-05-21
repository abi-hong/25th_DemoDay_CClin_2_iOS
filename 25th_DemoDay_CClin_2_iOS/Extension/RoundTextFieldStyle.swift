//
//  RoundTextFieldStyle.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/13.
//

import SwiftUI

struct RoundTextFieldStyle: TextFieldStyle {
    @State var backgroundColor: Color
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(5)
            .background(LinearGradient(gradient: Gradient(colors: [backgroundColor]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(5)
    }
}
