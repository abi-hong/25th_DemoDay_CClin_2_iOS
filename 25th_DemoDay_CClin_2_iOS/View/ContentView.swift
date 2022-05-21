//
//  ContentView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/12.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab: SelectedTab = SelectedTab.home
    
    var body: some View {
            TabView {
                ClubHomeView()
                    .tabItem {
                        Image("ic_home")
                        Text("홈")
                    }
                    .tag(SelectedTab.home)
                
                ProgressView()
                    .tabItem {
                        Image("ic_partner")
                        Text("끌린 파트너")
                    }
                    .tag(SelectedTab.partner)
                
                ProgressView()
                    .tabItem {
                        Image("ic_project")
                        Text("프로젝트")
                    }
                    .tag(SelectedTab.project)
                
                SponsoredHomeView()
                    .tabItem {
                        Image("ic_affiliate")
                        Text("제휴협찬")
                    }
                    .tag(SelectedTab.affiliate)
                
            }
            .accentColor(Color(hex: "F27953"))
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
