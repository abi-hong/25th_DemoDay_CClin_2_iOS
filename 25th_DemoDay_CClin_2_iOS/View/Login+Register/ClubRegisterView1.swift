//
//  ClubRegisterView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/13.
//

import SwiftUI

enum terms: String, Hashable, CaseIterable  {
    case usingService = "(필수) 서비스 이용 약관"
    case privateInformation = "(필수) 개인정보처리방침"
    case eventAlarm = "(선택) 이벤트 / 마케팅 수신동의"
    case serviceAlarm = "(선택) 서비스 활동 알림"
}

struct ClubRegisterView1: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    let userModel = UserModel.shared
    
    @State var progressValue: Float = 0.0
    @State var clubNameInput: String = ""
    @State var idInput: String = ""
    @State var isAvailableId: Bool = false
    @State var passwordInput: String = ""
    @State var checkPasswordInput: String = ""
    @State var termOpen: Bool = false
    @State var termAll: Bool = false
    @State var term1: Bool = false
    @State var term2: Bool = false
    @State var term3: Bool = false
    @State var term4: Bool = false
    @State var isClubRegisterView2Active: Bool = false
    
    var body: some View {
        ScrollView() {
            VStack {
                HStack {
                    Image("ic_progressbar")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height:16)
                    
                    ProgressBar(value: $progressValue).frame(height: 3)
                }
                .padding(.bottom, 25)
                
                VStack {
                    HStack {
                        Text("학생 단체 이름")
                            .font(SpoqaHanSansNeo.regular(size: 15))
                        Spacer()
                    }
                    TextField("", text:$clubNameInput)
                        .textFieldStyle(RoundTextFieldStyle(backgroundColor: Color.gray_bottom))
                }
                .padding(.bottom, 28)
                
                VStack {
                    HStack {
                        Text("아이디")
                            .font(SpoqaHanSansNeo.regular(size: 15))
                        Spacer()
                    }
                    HStack {
                        TextField("", text:$idInput)
                            .textFieldStyle(RoundTextFieldStyle(backgroundColor: Color.gray_bottom))
                        
                        Button {
                            isAvailableId = true
                        } label: {
                            Text("중복 확인")
                                .font(SpoqaHanSansNeo.medium(size: 12))
                        }
                        .foregroundColor(Color.black)
                        .padding(12)
                        .background(Color(hex: "DCDCDC"))
                        .cornerRadius(10)
                    }
                    HStack {
                        Text(isAvailableId ? " 사용가능한 아이디입니다." : "")
                            .font(SpoqaHanSansNeo.regular(size: 10))
                            .foregroundColor(Color.main_club)
                        Spacer()
                    }
                }
                .padding(.bottom, 20)
                
                VStack {
                    HStack {
                        Text("비밀번호")
                            .font(SpoqaHanSansNeo.regular(size: 15))
                        Spacer()
                    }
                    SecureField("", text:$passwordInput)
                        .textFieldStyle(RoundTextFieldStyle(backgroundColor: Color.gray_bottom))
                    
                    HStack {
                        Text("  영문 대/소문자, 숫자를 포함하고 8-12자로 입력해주세요.")
                            .font(SpoqaHanSansNeo.medium(size: 10))
                            .foregroundColor(Color.gray_text)
                        
                        Spacer()
                    }
                }
                .padding(.bottom, 21)
                
                VStack {
                    HStack {
                        Text("비밀번호 확인")
                            .font(SpoqaHanSansNeo.regular(size: 15))
                        Spacer()
                    }
                    SecureField("", text:$checkPasswordInput)
                        .textFieldStyle(RoundTextFieldStyle(backgroundColor: Color.gray_bottom))
                    
                    HStack {
                        Text(passwordInput != checkPasswordInput ? "비밀번호가 일치하지 않습니다." : "")
                            .font(SpoqaHanSansNeo.regular(size: 10))
                            .foregroundColor(Color.main_club)
                        Spacer()
                    }
                }
                .padding(.bottom, 25)
                
                VStack {
                    HStack {
                        Text("약관 동의")
                            .font(SpoqaHanSansNeo.regular(size: 15))
                        Spacer()
                    }
                    
                    HStack {
                        Button {
                            termAll.toggle()
                            term1 = termAll
                            term2 = termAll
                            term3 = termAll
                            term4 = termAll
                        } label: {
                            HStack {
                                ZStack {
                                    Rectangle()
                                        .fill(Color.gray_bottom)
                                        .frame(width: 21, height: 21)
                                    
                                    Image(systemName: termAll ? "checkmark" : "")
                                        .resizable()
                                        .frame(width: 12, height: 18)
                                }
                                Text("전체 약관에 동의합니다.")
                                    .font(SpoqaHanSansNeo.medium(size: 11))
                                    .foregroundColor(.black)
                            }
                        }
                        Spacer()
                        Button {
                            termOpen.toggle()
                        } label: {
                            Image(systemName: termOpen ? "chevron.up" : "chevron.down")
                                .foregroundColor(Color(hex: "333333"))
                        }
                    }
                    TermView()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: termOpen ? 79: 0)
                        .clipped()
                        .transition(.slide)
                        .padding(.bottom, 13)
                    
                    VStack {
                        HStack {
                            Toggle(isOn: $term1) {
                                Text(terms.usingService.rawValue)
                                    .font(SpoqaHanSansNeo.regular(size: 11))
                            }
                            .toggleStyle(CheckboxToggleStyle())
                            Spacer()
                        }
                        .padding(.bottom, 7)
                        
                        HStack {
                            Toggle(isOn: $term2) {
                                Text(terms.privateInformation.rawValue)
                                    .font(SpoqaHanSansNeo.regular(size: 11))
                            }
                            .toggleStyle(CheckboxToggleStyle())
                            Spacer()
                        }
                        .padding(.bottom, 7)
                        
                        HStack {
                            Toggle(isOn: $term3) {
                                Text(terms.eventAlarm.rawValue)
                                    .font(SpoqaHanSansNeo.regular(size: 11))
                            }
                            .toggleStyle(CheckboxToggleStyle())
                            Spacer()
                        }
                        .padding(.bottom, 7)
                        
                        HStack {
                            Toggle(isOn: $term4) {
                                Text(terms.serviceAlarm.rawValue)
                                    .font(SpoqaHanSansNeo.regular(size: 11))
                            }
                            .toggleStyle(CheckboxToggleStyle())
                            Spacer()
                        }
                    }
                }
                .padding(.bottom, 15)
                
                LargeButton(title: "다음으로", backgroundColor: satisfiedCondition() ? Color.main_club : Color.gray_bottom, foregroundColor: satisfiedCondition() ? Color.white : Color.gray_bottom_text) {
                    
                    isClubRegisterView2Active = true
                    
                    userModel.id = idInput
                    userModel.name = clubNameInput
                    userModel.password = passwordInput
                }
                .frame(width: 329, height: 55, alignment: .center)
                .disabled(!satisfiedCondition())
                .background(
                    NavigationLink(isActive: $isClubRegisterView2Active, destination: {
                        ClubRegisterView2()
                    }, label: {
                        EmptyView()
                    })
                )
                
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Image("logo+name")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 98, height: 23)
                    }
                }
                .navigationBarBackButtonHidden(true)
                .navigationBarItems(leading: Button(action : {
                    self.mode.wrappedValue.dismiss()
                }){
                    Image(systemName: "chevron.backward")
                })
            }
            .padding(.horizontal, 30)
        }
        .onAppear{
            startProgressBar()
        }
    }
    
    func satisfiedCondition() -> Bool {
        if clubNameInput == "" || idInput == "" ||  passwordInput == "" || passwordInput != checkPasswordInput || !term1 || !term2 {
            return false
        }
        return true
    }
    
    func startProgressBar() {
        for _ in 0...20 {
                    self.progressValue += 0.015
                }
    }
}

struct ClubRegisterView1_Previews: PreviewProvider {
    static var previews: some View {
        ClubRegisterView1()
    }
}
