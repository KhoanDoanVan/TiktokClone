//
//  PostGridView.swift
//  Swift-Tiktok
//
//  Created by Đoàn Văn Khoan on 25/02/2024.
//

import SwiftUI

struct PostGridView: View {
    private var items = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1)
    ]
    
    private var width = (UIScreen.main.bounds.width / 3) - 2
    
    var body: some View {
        LazyVGrid(columns: items, spacing: 2){
            ForEach(0..<15){ post in
                Rectangle()
                    .frame(width: width, height: 160)
                    .clipped() // same the overflow in css
            }
        }
    }
}

#Preview {
    PostGridView()
}
