//
//  ProfileHeaderView.swift
//  Swift-Tiktok
//
//  Created by Đoàn Văn Khoan on 25/02/2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing : 16){
            VStack(spacing : 8){
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 82, height: 82)
                    .foregroundColor(Color(.systemGray5))
                
                Text("@simonisdev")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            HStack (spacing : 16){
                UserStatView(value: "5", title: "Following")
                UserStatView(value: "0", title: "Followers")
                UserStatView(value: "100", title: "Likes")
            }
            
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .background(Color(.systemGray6))
                    .cornerRadius(6)
                    .foregroundColor(.black)
            }
            
            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView()
}
