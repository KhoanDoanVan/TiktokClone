//
//  FeedView.swift
//  Swift-Tiktok
//
//  Created by Đoàn Văn Khoan on 24/02/2024.
//

import SwiftUI
import AVKit

struct FeedView: View {
    
    @StateObject var viewModel = FeedViewModel()
    @State private var scrollPosition : String?
    @State private var player = AVPlayer()
    
    var body: some View {
        ScrollView(showsIndicators : false) {
            LazyVStack(spacing : 0){
                ForEach(viewModel.posts) { post in
                    FeedCell(post: post, player: player)
                        .id(post.id) // same below that
                }
            }
            .scrollTargetLayout()
        }
        .onAppear{
            
        }
        .onAppear{
            player.play()
        }
        .scrollPosition(id: $scrollPosition) // use for fix the bug play all videos
        .ignoresSafeArea()
        .scrollTargetBehavior(.paging)
        .onChange(of: scrollPosition ?? ""){ oldValue, newValue in
            playVideoOnChangeOfScrollPosition(postId: newValue)
        }
    }
    
    func playInitialVideoIfNeccesary() {
        guard
            scrollPosition == nil,
            let post = viewModel.posts.first,
            player.currentTime == nil else { return }
        
        let item = AVPlayerItem(url: URL(string : post.videoUrl)!)
        player.replaceCurrentItem(with: item)
    }
    
    func playVideoOnChangeOfScrollPosition(postId : String){
        guard let currentPost = viewModel.posts.first(where: {
            $0.id == postId
        }) else { return }
        
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: URL(string : currentPost.videoUrl)!)
        player.replaceCurrentItem(with: playerItem)
    }
}

#Preview {
    FeedView()
}
