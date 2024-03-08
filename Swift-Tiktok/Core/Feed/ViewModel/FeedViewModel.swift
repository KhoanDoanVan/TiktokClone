//
//  FeedViewModel.swift
//  Swift-Tiktok
//
//  Created by Đoàn Văn Khoan on 25/02/2024.
//

import Foundation


class FeedViewModel: ObservableObject{
    @Published var posts = [Post]()
    
    let videoUrls = [
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4"
    ]
    
    init(){
        fetchPost()
    }
    
    func fetchPost(){
        self.posts = [
            .init(id : UUID().uuidString, videoUrl : videoUrls[0]),
            .init(id : UUID().uuidString, videoUrl : videoUrls[1]),
            .init(id : UUID().uuidString, videoUrl : videoUrls[2]),
            .init(id : UUID().uuidString, videoUrl : videoUrls[3])
        ]
    }
}
