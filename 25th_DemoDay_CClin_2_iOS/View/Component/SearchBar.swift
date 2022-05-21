//
//  SearchBar.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/17.
//

import SwiftUI

struct SearchBar: View {
    
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        ZStack(alignment: .trailing) {
            TextField(placeholder, text: $text)
                .padding(.leading)
            
            Image(systemName: "magnifyingglass")
                .padding(.trailing, 13)
                
        }
        .frame(height: 34)
        .background(Color.gray_bottom)
        .cornerRadius(5)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(placeholder: "search..", text: .constant("hi"))
    }
}
