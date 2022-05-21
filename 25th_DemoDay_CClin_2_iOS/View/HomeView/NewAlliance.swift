//
//  newAlliance.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/14.
//

import SwiftUI

struct newAlliance: View {
    @State var imgaeUrl: String = "hot_alliance"
    @State var title: String = "title"
    @State var clubName: String = "name"
    @State var heartCnt: Int = 0
    @State var commentCnt: Int = 0
    
    var body: some View {
        HStack {
            Image(imgaeUrl)
                .resizable()
                .frame(width: 48, height: 47)
            VStack {
                HStack {
                Text(title)
                    .bold()
                    .font(.system(size: 11))
                    Spacer()
                }
                Spacer()
                    .frame(width: 0, height: 10)
                HStack {
                    Text(clubName)
                        .font(.system(size: 8))
                    Spacer()
                }
                
            }
            Spacer()
            VStack {
                Spacer()
                HStack {
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 8, height: 6)
                    Text("\(heartCnt)")
                        .font(.system(size: 7))
                    Image(systemName: "message.fill")
                        .resizable()
                        .frame(width: 8, height: 6)
                    Text("\(commentCnt)")
                        .font(.system(size: 7))
                }
            }
        }
        .frame(width: 326, height: 46)
        .padding()
        .background(Color(hex: "ECECEC"))
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct newAlliance_Previews: PreviewProvider {
    static var previews: some View {
        newAlliance()
    }
}
