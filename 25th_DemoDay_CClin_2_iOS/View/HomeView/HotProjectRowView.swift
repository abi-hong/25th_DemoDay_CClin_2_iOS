//
//  HotProjectRowView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/21.
//

import SwiftUI

struct HotProjectRowView: View {
    
    @State var image: String = ""
    @State var title: String = ""
    var body: some View {
        VStack {
            Image("hot_project")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 131)
            
        }
    }
}

struct HotProjectRowView_Previews: PreviewProvider {
    static var previews: some View {
        HotProjectRowView()
    }
}
