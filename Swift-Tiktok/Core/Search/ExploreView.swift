//
//  ExploreView.swift
//  Swift-Tiktok
//
//  Created by Đoàn Văn Khoan on 24/02/2024.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing : 16){
                    ForEach(0 ..< 10){ user in
                        UserCell()
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    ExploreView()
}
