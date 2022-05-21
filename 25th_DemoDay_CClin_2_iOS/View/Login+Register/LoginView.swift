//
//  LoginView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/13.
//
//

import SwiftUI

struct LoginView: View {
    
    @State var idInput: String = ""
    @State var passwordInput: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:150)
                
                TextField("아이디", text: $idInput)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 10)
                    .keyboardType(.emailAddress)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray_button_line)
                    )
                    .padding(.bottom, 13)
                
                SecureField("비밀번호", text: $passwordInput)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 10)
                    .keyboardType(.default)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray_button_line)
                    )
                    .padding(.bottom, 4)
                
                Button {
                    //
                } label: {
                    Text("비밀번호를 잊으셨나요?")
                        .foregroundColor(Color.gray_icon)
                        .font(.system(size: 13))
                        .underline()
                }
                .padding(.bottom, 59)
                
                LargeButton(title: "로그인", backgroundColor: .main_club, foregroundColor: Color.white) {
                    
                    UserLoginManager.shared.doLogin(id: idInput, password: passwordInput)
                }
                .frame(height: 55)
                .padding(.bottom, 13)
                
                HStack {
                    Rectangle()
                        .fill(Color(hex: "EFEFEF"))
                        .frame(height: 1)
                    
                    Text("또는")
                        .font(.system(size: 13))
                        .foregroundColor(Color.gray_text)
                    
                    Rectangle()
                        .fill(Color(hex: "EFEFEF"))
                        .frame(height: 1)
                }
                .padding(.bottom, 16)
                
                NavigationLink(destination: SelectRegisterTypeView()) {
                    Text("처음 오셨나요?")
                        .font(.system(size: 10))
                        .foregroundColor(Color.gray_text)
                        .underline()
                }
            }
            .padding(.horizontal, 30)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
