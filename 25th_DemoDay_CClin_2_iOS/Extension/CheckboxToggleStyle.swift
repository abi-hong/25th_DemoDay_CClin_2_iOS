//
//  Checkbox.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/13.
//

import SwiftUI

struct CheckboxToggleStyle: ToggleStyle {
    @Environment(\.isEnabled) var isEnabled
    
    func makeBody(configuration: Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle() // toggle the state binding
        }, label: {
            HStack {
                ZStack {
                    Rectangle()
                        .fill(Color.gray_bottom)
                        .frame(width: 21, height: 21)
                    
                    Image(systemName: configuration.isOn ? "checkmark" : "")
                        .resizable()
                        .frame(width: 12, height: 18)
                }
                configuration.label
            }
        })
            .buttonStyle(PlainButtonStyle()) // remove any implicit styling from the button
            .disabled(!isEnabled)
    }
}
