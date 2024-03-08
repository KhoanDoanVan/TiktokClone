//
//  CustomVideoPlayer.swift
//  Swift-Tiktok
//
//  Created by Đoàn Văn Khoan on 25/02/2024.
//

import SwiftUI
import AVKit


struct CustomVideoPlayer: UIViewControllerRepresentable{
    var player : AVPlayer
    
    func makeUIViewController(context: Context) -> UIViewController { // create and return initial intance of the UIKit Controller
        let controller = AVPlayerViewController()
        
        controller.player = player
        controller.showsPlaybackControls = false
        controller.exitsFullScreenWhenPlaybackEnds = true
        controller.allowsPictureInPicturePlayback = true
        controller.videoGravity = .resizeAspectFill // make video full screen
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
}
