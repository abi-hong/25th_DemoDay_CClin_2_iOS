//
//  RegisterApprovedView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/14.
//

import SwiftUI

struct RegisterApprovedView: View {
    var body: some View {
        VStack {
            Image("party")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 170)
                .padding(.top, 125)
                .padding(.bottom, 27)
            
            VStack {
                Text("회원가입을 축하드립니다.")
                    .font(SpoqaHanSansNeo.regular(size: 15))
                    .padding(.bottom, 11)
                
                Text("지금 바로 10명 이상의 단체 회원을 초대하고")
                    .font(SpoqaHanSansNeo.regular(size: 15))
                Text("끌린을 시작해보세요")
                        .font(SpoqaHanSansNeo.regular(size: 15))
            }
            
            Spacer()
                .frame(height: 39)
            
            VStack {
                Text("10명 이상 초대 시, 회원가입이 완료됩니다.")
                    .foregroundColor(Color.main_club)
                    .font(SpoqaHanSansNeo.regular(size: 10))
                    .padding(.bottom, 16)
                
                LargeButton(title: "카카오톡으로 초대장 보내기", backgroundColor: Color(hex: "FFDA00"), foregroundColor: Color.black) {
                    //
                }
                .frame(height: 55, alignment: .center)
                
                LargeButton(title: "링크로 초대장 보내기", backgroundColor: Color.main_club, foregroundColor: Color.white) {
                    //
                }
                .frame(height: 55, alignment: .center)
            }
            .padding(.top, 56)
        }
        .padding(.horizontal, 31)
        .navigationBarHidden(true)
    }
}

struct RegisterApprovedView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterApprovedView()
    }
}
