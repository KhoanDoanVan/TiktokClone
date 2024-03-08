//
//  FeedCell.swift
//  Swift-Tiktok
//
//  Created by Đoàn Văn Khoan on 24/02/2024.
//

import SwiftUI
import AVKit

struct FeedCell: View {
    
    let post : Post
    let player : AVPlayer
    
    init(post : Post, player : AVPlayer){
        self.post = post
        self.player = player
    }
    
    var body: some View {
        ZStack{
            CustomVideoPlayer(player: player)
                .containerRelativeFrame([.horizontal, .vertical])
            
            VStack{
                Spacer()
                
                HStack(alignment : .bottom){
                    VStack(alignment : .leading){
                        Text("simonisdev")
                            .fontWeight(.semibold)
                        Text("caption with happy feeling")
                    }
                    .foregroundColor(.white)
                    
                    Spacer()
                    
                    VStack(spacing : 20){
                        
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundColor(.blue)
                        
                        VStack{
                            Image(systemName: "heart.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundColor(.white)
                            
                            Text("29")
                                .font(.footnote)
                                .foregroundStyle(.white)
                        }
                        
                        VStack{
                            Image(systemName: "ellipsis.bubble.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundColor(.white)
                            
                            Text("0")
                                .font(.footnote)
                                .foregroundColor(.white)
                        }
                        
                        Image(systemName: "bookmark.fill")
                            .resizable()
                            .frame(width: 22, height: 28)
                            .foregroundColor(.white)
                        
                        Image(systemName: "arrowshape.turn.up.right.fill")
                            .resizable()
                            .frame(width: 28, height: 28)
                            .foregroundColor(.white)
                    }
                }
                .padding(.bottom, 80)
            }
            .padding()
        }
        .onTapGesture {
            switch player.timeControlStatus {
            case .paused:
                player.play()
            case .waitingToPlayAtSpecifiedRate:
                break
            case .playing:
                player.pause()
            }
        }
    }
}

#Preview {
    FeedCell(post : Post(id: UUID().uuidString, videoUrl:"" ), player: AVPlayer())
}
