//
//  TabBarTiktok.swift
//  Swift-Tiktok
//
//  Created by Đoàn Văn Khoan on 24/02/2024.
//

import SwiftUI

struct TabBarTiktok: View {
    
    @State private var selected = 0
    
    var body: some View {
        TabView{
            FeedView()
                .tabItem {
                    VStack{
                        Image(systemName: selected == 0 ? "house.fill" : "house")
                            .environment(\.symbolVariants, selected == 0 ? .fill : .none)
                        Text("Home")
                    }
                }
                .onAppear{
                    selected = 0
                }
                .tag(0)
            
            ExploreView()
                .tabItem {
                    VStack{
                        Image(systemName: selected == 1 ? "person.2.fill" : "person.2")
                            .environment(\.symbolVariants, selected == 1 ? .fill : .none)
                        Text("Friends")
                    }
                }
                .onAppear{
                    selected = 1
                }
                .tag(1)
            
            Text("Upload")
                .tabItem {
                    Image(systemName: "plus")
                }
                .onAppear{
                    selected = 2
                }
                .tag(2)
            
            NotificationsView()
                .tabItem {
                    VStack{
                        Image(systemName: selected == 3 ? "heart.fill" : "heart")
                            .environment(\.symbolVariants, selected == 3 ? .fill : .none)
                        Text("Inbox")
                    }
                }
                .onAppear{
                    selected = 3
                }
                .tag(3)
            
            CurrentUserProfileView()
                .tabItem {
                    VStack{
                        Image(systemName: selected == 4 ? "person.fill" : "person")
                            .environment(\.symbolVariants, selected == 4 ? .fill : .none)
                        Text("Profile")
                    }
                }
                .onAppear{
                    selected = 4
                }
                .tag(4)
        }
        .tint(.black)
    }
}

#Preview {
    TabBarTiktok()
}
