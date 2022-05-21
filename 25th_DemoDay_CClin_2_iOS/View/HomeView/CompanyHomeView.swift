//
//  CompanyHomeView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/14.
//

import SwiftUI

struct CompanyHomeView: View {
    var body: some View {
        VStack {
            HStack {
                Image("logo+name")
                Spacer()
                Button {
                    //
                } label: {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color.black)
                }
                
                Button {
                    //
                } label: {
                    Image(systemName: "person.circle")
                        .foregroundColor(Color.black)
                }
            }
            .padding(.vertical, 10)
            
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color.gray)
                .frame(width: 329, height: 108, alignment: .center)
                .padding(.bottom, 10)
            
            HStack {
                VStack {
                    HStack {
                        Text("HOT한 제휴/협찬")
                            .bold()
                            .font(.system(size: 15))
                        Spacer()
                    }
                    Image("hot_alliance")
                        .resizable()
                        .frame(width: 131, height: 129)
                        .shadow(radius: 10)
                    Text("초청 강연 공간 대관")
                        .bold()
                        .font(.system(size: 12))
                    
                    HStack {
                        Text("큐시즘")
                            .font(.system(size: 8))
                        Spacer()
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 8, height: 6)
                        Text("45")
                            .font(.system(size: 7))
                        Image(systemName: "message.fill")
                            .resizable()
                            .frame(width: 8, height: 6)
                        Text("34")
                            .font(.system(size: 7))
                    }
                    .padding(.horizontal, 10)
                    
                }
                .padding()
                
                VStack {
                    HStack {
                        Text("HOT한 학생 단체")
                            .bold()
                            .font(.system(size: 15))
                        Spacer()
                    }
                    Image("hot_alliance")
                        .resizable()
                        .frame(width: 131, height: 129)
                        .shadow(radius: 10)
                    Text("큐시즘")
                        .bold()
                        .font(.system(size: 12))
                    
                    HStack {
                        Text("IT/기술")
                            .font(.system(size: 8))
                        Spacer()
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 8, height: 6)
                        Text("24")
                            .font(.system(size: 7))
                        Image(systemName: "message.fill")
                            .resizable()
                            .frame(width: 8, height: 6)
                        Text("11")
                            .font(.system(size: 7))
                    }
                    .padding(.horizontal, 10)
                    
                }
                .padding()
            }
            .padding(.bottom, 10)
            
            HStack{
                Text("이번 주 새로 등록된 제휴/협찬")
                    .font(.system(size: 15))
                    .bold()
                Spacer()
            }
            .padding(.bottom, 10)
            
            VStack {
                newAlliance(imgaeUrl: "hot_alliance", title: "밋업데이 공간 대관", clubName: "큐시즘", heartCnt: 43, commentCnt: 22)
                    .padding(.bottom, 10)
                
                newAlliance(imgaeUrl: "hot_alliance", title: "문화 행사 관련 제휴 기업 모집", clubName: "큐시즘", heartCnt: 20, commentCnt: 22)
                    .padding(.bottom, 10)
                
                newAlliance(imgaeUrl: "hot_alliance", title: "000 물품 협찬", clubName: "큐시즘", heartCnt: 120, commentCnt: 32)
            }
            
            Spacer()
        }
        .padding(.horizontal, 20)
        
    }
}

struct CompanyHomeView_Previews: PreviewProvider {
    static var previews: some View {
        CompanyHomeView()
    }
}
