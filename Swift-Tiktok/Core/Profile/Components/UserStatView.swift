//
//  UserStatView.swift
//  Swift-Tiktok
//
//  Created by Đoàn Văn Khoan on 25/02/2024.
//

import SwiftUI

struct UserStatView: View {
    let value : String
    let title : String
    
    var body: some View {
        VStack{
            Text(value)
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
                .foregroundStyle(.gray)
        }
        .frame(width: 80, alignment: .center)
    }
}

#Preview {
    UserStatView(value : "1", title: "likes")
}
