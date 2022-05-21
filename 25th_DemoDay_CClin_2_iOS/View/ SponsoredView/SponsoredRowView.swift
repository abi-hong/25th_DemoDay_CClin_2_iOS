//
//  SponsoredRowView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/17.
//

import SwiftUI

struct SponsoredRowView: View {
    @State var id: Int = 1
    @State var type: String = "협찬"
    @State var title: String = "기업 프로젝트 평가단 모집"
    @State var description: String = "5월 15일에 100명 규모 행사에 커피 브랜드 협찬 해주실 기업 초청합니다니다니다니다"
    @State var likeCnt: Int = 12
    
    var body: some View {
        VStack {
            HStack {
                Text(String(id))
                    .font(.system(size: 10))
                
                Spacer()
                    .frame(width: 18)
                
                Capsule()
                    .frame(width: 57, height: 17)
                    .foregroundColor(Color(hex: "525252"))
                    .overlay(
                        Text(type)
                            .foregroundColor(Color.white)
                            .font(.system(size: 10)))
                
                Spacer()
                    .frame(width: 8)
                
                Text(title)
                    .font(.system(size: 10))
                    .bold()
                
                Spacer()
                
                Image(systemName: "heart.fill")
                    .foregroundColor(Color(hex: "F27953"))
                    .frame(width: 13, height: 12)
                
                Text(String(likeCnt))
                    .font(.system(size: 10))
                    .foregroundColor(Color(hex: "F27953"))
            }
            HStack {
                Spacer()
                    .frame(width: 18)
                
                Text(description)
                    .font(.system(size: 10))
                    .lineLimit(1)
            }
            
        }
        .padding(EdgeInsets(top: 5, leading: 12, bottom: 8, trailing: 8))
        .cornerRadius(7)
        .background(Color(hex: "F0F0F0"))
    }
}

struct SponsoredRowView_Previews: PreviewProvider {
    static var previews: some View {
        SponsoredRowView()
    }
}
