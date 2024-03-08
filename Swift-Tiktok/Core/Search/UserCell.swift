//
//  ExploreCell.swift
//  Swift-Tiktok
//
//  Created by Đoàn Văn Khoan on 24/02/2024.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing : 12){
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray4))
            
            VStack(alignment : .leading){
                Text("simonisdev")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Doan Van Khoan")
                    .font(.footnote)
            }
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
