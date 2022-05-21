//
//  ClubRegisterView2.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/13.
//

import SwiftUI

struct ClubRegisterView2: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    let userModel = UserModel.shared
    
    @State var progressValue: Float = 0.3
    @State var clubExplanation: String = ""
    @State var selectedCategory: SelectedCategory?
    @State var selectedCategoryEct: Bool = false
    @State var inputCategoryEct: String = ""
    @State var openYearView: Bool = false
    @State var selectedYear: Int = 0
    @State var openAreaView: Bool = false
    @State var selectedArea: String = ""
    @State var url: String = ""
    @State var isApprovedViewActive: Bool = false
    @State var showYearDropDown: Bool = false
    
    let columns4 = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]

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
                        Text("학생 단체 설명")
                            .font(SpoqaHanSansNeo.bold(size: 15))
                        Spacer()
                    }
                    ZStack(alignment: .top) {
                        Rectangle()
                            .frame(width: .infinity, height: 120)
                            .foregroundColor(Color.gray_bottom)
                            .cornerRadius(5)
                        
                        TextField("", text: $clubExplanation)
                            .onChange(of: clubExplanation, perform: {
                                     clubExplanation = String($0.prefix(80))
                                   })
                            .padding()
                        
                        Text("\(clubExplanation.count)/80")
                            .font(.system(size: 10))
                            .foregroundColor(Color(hex: "585858"))
                            .frame(width: 307, height: 108, alignment: .bottomTrailing)
                    }
                }
                .padding(.bottom, 15)
                
                VStack {
                    HStack {
                        Text("단체 카테고리")
                            .font(SpoqaHanSansNeo.bold(size: 15))
                        Spacer()
                    }
                    
                    LazyVGrid(columns: columns4) {
                        ForEach(SelectedCategory.allCases, id: \.self) { category in
                            Button {
                                selectedCategory = category
                                selectedCategoryEct = false
                            } label: {
                                if selectedCategory == category {
                                    RoundedRectangle(cornerRadius: 5)
                                        .foregroundColor(Color.main_club)
                                        .overlay(
                                            Text(category.rawValue)
                                                .font(SpoqaHanSansNeo.medium(size: 12))
                                                .foregroundColor(Color.white)
                                        )
                                }
                                else {
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(Color.gray_bottom)
                                        .overlay(
                                            Text(category.rawValue)
                                                .font(.system(size: 12))
                                                .foregroundColor(Color.black)
                                        )

                                }
                            }.frame(height: 30)

                        }
                    }
                    
                    HStack {
                        Button {
                            selectedCategory = nil
                            selectedCategoryEct.toggle()
                        } label: {
                            RoundedRectangle(cornerRadius: 5)
                                .fill(selectedCategoryEct ? Color.main_club : Color.gray_bottom)
                                .frame(width: 98, height: 30)
                                .overlay(
                                    Text("기타(직접입력)")
                                        .font(.system(size: 12))
                                        .foregroundColor(selectedCategoryEct ? Color.white : Color.black)
                                )
                        }
                        
                        TextField("", text:$inputCategoryEct)
                            .frame(height: 30)
                            .padding(.leading ,10)
                            .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray_button_line))
                    }
                   
                }
                .padding(.bottom, 15)
                
                VStack {
                    HStack {
                        Text("단체 설립연도")
                            .font(SpoqaHanSansNeo.bold(size: 15))
                        Spacer()
                    }
                    
                    HStack {
                    Menu {
                        ForEach(2000..<2022, id: \.self){ year in
                                    Button(String(year)) {
                                        self.selectedYear = year
                                    }
                                }
                            } label: {
                                HStack {
                                    Text(selectedYear == 0 ? "연도 선택" : String(selectedYear))
                                        .font(SpoqaHanSansNeo.medium(size: 11))
                                        .foregroundColor(Color.black)
                                   
                                    Image(systemName: "chevron.down")
                                        .resizable()
                                        .frame(width: 8, height: 5)
                                        .foregroundColor(Color.black)
                                        .font(Font.system(size: 20))
                                }
                                .padding(.vertical, 7)
                                .padding(.horizontal, 14)
                                .background(Color(hex: "F3F3F3"))
                                .cornerRadius(5)
                                .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color(hex: "EFEFEF")))
                                
                            }
                        Spacer()
                    }
                    HStack{
                      Text("1년 이상 활동한 단체만 가입 가능합니다.")
                            .font(SpoqaHanSansNeo.bold(size: 10))
                        .foregroundColor(Color.main_club)
                        
                        Spacer()
                    }
                }
                .padding(.bottom, 15)
                
                VStack {
                    HStack {
                        Text("활동 지역")
                            .font(SpoqaHanSansNeo.bold(size: 15))
                        Spacer()
                    }
                    
                    HStack {
                    Menu {
                        ForEach(SelectedArea.allCases, id: \.self){ area in
                            Button(area.rawValue) {
                                self.selectedArea = area.rawValue
                                    }
                                }
                            } label: {
                                HStack {
                                    Text(selectedArea == "" ? "지역 선택" : selectedArea)
                                        .font(.system(size: 13))
                                        .foregroundColor(Color.black)
                                   
                                    Image(systemName: "chevron.down")
                                        .resizable()
                                        .frame(width: 8, height: 5)
                                        .foregroundColor(Color.black)
                                        .font(Font.system(size: 20))
                                }
                                .padding(.vertical, 7)
                                .padding(.horizontal, 14)
                                .background(Color(hex: "F3F3F3"))
                                .cornerRadius(5)
                                .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color(hex: "EFEFEF")))
                                
                            }
                        Spacer()
                    }
                }
                .padding(.bottom, 15)
                
                VStack {
                    HStack {
                        Text("단체 사이트 / 채널")
                            .font(SpoqaHanSansNeo.bold(size: 15))
                        Spacer()
                    }
                    
                    TextField("", text: $url)
                        .textFieldStyle(RoundTextFieldStyle(backgroundColor: Color.gray_bottom))
                }
                .padding(.bottom, 15)
                
                
                HStack {
                    LargeButton(title: "회원가입 하기", backgroundColor: satisfiedCondition() ? Color.main_club : Color.gray_bottom, foregroundColor: satisfiedCondition() ? Color.white : Color.gray_bottom_text) {
                        
                        isApprovedViewActive = true
                        
                        userModel.description = clubExplanation
                        userModel.category = selectedCategory
                        userModel.foundYear = selectedYear
                        userModel.area = selectedArea
                        userModel.clubUrl = url
                        
                        UserLoginManager.shared.doServerRegister(userModel: userModel)
                        
                    }
                    .frame(width: 329, height: 55, alignment: .center)
                    .disabled(!satisfiedCondition())
                    .background(
                        NavigationLink(isActive: $isApprovedViewActive, destination: {
                            RegisterApprovedView()
                        }, label: {
                            EmptyView()
                        })
                    )
                    
                }
                
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
        if clubExplanation == "" || selectedCategory == nil || selectedYear == 0 || selectedArea == "" {
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

struct ClubRegisterView2_Previews: PreviewProvider {
    static var previews: some View {
        ClubRegisterView2(selectedCategory: .cook)
    }
}
