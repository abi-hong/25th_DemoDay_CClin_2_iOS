//
//  SelectRegisterTypeView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/16.
//

import SwiftUI

struct SelectRegisterTypeView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var isClubRegisterView1Active: Bool = false
    
    var body: some View {
        VStack {
            Image("logo+name")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height:65)
                .padding(.bottom, 76)
            
            VStack {
                Text("학생 단체와 기업을 연결하는 플랫폼,")
                Text("끌린에 오신 것을 환영합니다.")
                    .padding(.bottom, 40)
                
                Text("지금 바로 가입해서")
                Text("끌린 파트너가 되어주세요!")
            }
            .font(SpoqaHanSansNeo.regular(size: 15))
            .padding(.bottom, 97)
            
            LargeButton(title: "학생 단체로 회원가입 하기", backgroundColor: Color(hex: "FFDA00"), foregroundColor: Color.black) {
                isClubRegisterView1Active = true
            }
            .frame(height: 55)
            .background(
                NavigationLink(isActive: $isClubRegisterView1Active, destination: {
                    ClubRegisterView1()
                }, label: {
                    EmptyView()
                })
            )
            .padding(.bottom, 11)
            
            LargeButton(title: "기업으로 회원가입하기",backgroundColor: Color.main_company, foregroundColor: Color.white) {
                //
            }
        }
        .padding(.horizontal, 31)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action : {
            self.mode.wrappedValue.dismiss()
        }){
            Image(systemName: "chevron.backward")
        })
        
    }
}

struct SelectRegisterTypeView_Previews: PreviewProvider {
    static var previews: some View {
        SelectRegisterTypeView()
    }
}
