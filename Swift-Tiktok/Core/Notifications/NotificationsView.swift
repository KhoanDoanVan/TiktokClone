//
//  NotificationsView.swift
//  Swift-Tiktok
//
//  Created by Đoàn Văn Khoan on 24/02/2024.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators : false){
                LazyVStack(spacing : 24){
                    ForEach(0..<10){ notifications in
                        NotificationsCell()
                    }
                }
            }
            .navigationTitle("Notifcations")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    NotificationsView()
}
