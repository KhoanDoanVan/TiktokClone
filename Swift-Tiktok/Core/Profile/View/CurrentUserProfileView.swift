//
//  CurrentUserProfileView.swift
//  Swift-Tiktok
//
//  Created by Đoàn Văn Khoan on 25/02/2024.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators : false){
                VStack{
                    ProfileHeaderView()
                    
                    PostGridView()
                }
                .padding(.top)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
