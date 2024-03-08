//
//  NotificationsCell.swift
//  Swift-Tiktok
//
//  Created by Đoàn Văn Khoan on 24/02/2024.
//

import SwiftUI

struct NotificationsCell: View {
    var body: some View {
        HStack{
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(Color(.systemGray5))
            
            HStack{
                Text("simonisdev")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                
                Text(" liked one your post damp?It awesome. ")
                    .font(.footnote) +
                
                Text("10d")
                    .font(.footnote)
                    .foregroundColor(Color(.systemGray))
            }
            
            Spacer()
            
            Image("image1")
                .resizable()
                .frame(width: 48, height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 6))
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationsCell()
}
