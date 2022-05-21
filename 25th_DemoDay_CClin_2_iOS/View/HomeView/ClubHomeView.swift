//
//  ClubHomeView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/14.
//

import SwiftUI

struct ClubHomeView: View {
    
    @State var isMyPageViewActive: Bool = false
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.gray_bottom)
                        .frame(width: 329, height: 108, alignment: .center)
                        .padding(.bottom, 10)
                    
                    VStack {
                        Text("HOT한 프로젝트")
                            .bold()
                            .font(.system(size: 15))
                        Spacer()
                    }
//                    HStack {
//                        VStack {
//                            HStack {
//                                Text("HOT한 프로젝트")
//                                    .bold()
//                                    .font(.system(size: 15))
//                                Spacer()
//                            }
//                            Image("hot_project")
//                                .resizable()
//                                .frame(width: 131, height: 129)
//                                .shadow(radius: 10)
//                            Text("서비스 페르소나 설계")
//                                .bold()
//                                .font(.system(size: 12))
//
//                            HStack {
//                                Text("고퀄")
//                                    .font(.system(size: 8))
//                                Spacer()
//                                Image(systemName: "heart.fill")
//                                    .resizable()
//                                    .frame(width: 8, height: 6)
//                                Text("45")
//                                    .font(.system(size: 7))
//                                Image(systemName: "message.fill")
//                                    .resizable()
//                                    .frame(width: 8, height: 6)
//                                Text("34")
//                                    .font(.system(size: 7))
//                            }
//                            .padding(.horizontal, 10)
//
//                        }
//                        .padding()
//
//                        VStack {
//                            HStack {
//                                Text("HOT한 기업")
//                                    .bold()
//                                    .font(.system(size: 15))
//                                Spacer()
//                            }
//                            Image("hot_project")
//                                .resizable()
//                                .frame(width: 131, height: 129)
//                                .shadow(radius: 10)
//                            Text("파블로항공")
//                                .bold()
//                                .font(.system(size: 12))
//
//                            HStack {
//                                Text("IT/기술")
//                                    .font(.system(size: 8))
//                                Spacer()
//                                Image(systemName: "heart.fill")
//                                    .resizable()
//                                    .frame(width: 8, height: 6)
//                                Text("24")
//                                    .font(.system(size: 7))
//                                Image(systemName: "message.fill")
//                                    .resizable()
//                                    .frame(width: 8, height: 6)
//                                Text("11")
//                                    .font(.system(size: 7))
//                            }
//                            .padding(.horizontal, 10)
//
//                        }
//                        .padding()
//                    }
//                    .padding(.bottom, 10)
                    
                    HStack{
                        Text("이번 주 새로 등록된 프로젝트")
                            .font(.system(size: 15))
                            .bold()
                        Spacer()
                    }
                    .padding(.bottom, 10)
                    
                    VStack {
                        newAlliance(imgaeUrl: "hot_project", title: "드론 적재 시스템과 시스템 운영 개념 수립", clubName: "파블로항공", heartCnt: 43, commentCnt: 22)
                            .padding(.bottom, 10)
                        
                        newAlliance(imgaeUrl: "hot_project", title: "개인화 뉴스 추천 서비스 개발", clubName: "큐시즘", heartCnt: 20, commentCnt: 22)
                            .padding(.bottom, 10)
                        
                        newAlliance(imgaeUrl: "hot_project", title: "IoT 서비스 페르소나 설계 및 기획전 아이디어 공모", clubName: "큐시즘", heartCnt: 120, commentCnt: 32)
                    }
                    
                    Spacer()
                }
                .padding(.top, 20)
                .padding(.horizontal, 20)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("홈")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.bold(size: 20))
                            .padding(.leading, 15)
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack {
                            Button {
                                //
                            } label: {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color.black)
                            }
                            
                            Button {
                                isMyPageViewActive = true
                            } label: {
                                Image("ic_mypage")
                                    .padding(.trailing, 15)
                            }
                            .background(
                                NavigationLink(isActive: $isMyPageViewActive, destination: {
                                    ClubMyPageView()
                                }, label: {
                                    EmptyView()
                                })
                            )
                        }
                        
                    }
                }
            }
            
        }
        
    }
}

struct ClubHomeView_Previews: PreviewProvider {
    static var previews: some View {
        ClubHomeView()
    }
}
