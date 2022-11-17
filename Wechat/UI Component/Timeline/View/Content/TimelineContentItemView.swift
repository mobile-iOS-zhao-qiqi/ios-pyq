//
//  TimelineContentItemVIew.swift
//  UI Component
//
//  Created by Qiqi Zhao on 2022/11/17.
//

import SwiftUI

struct TimelineContentItemView: View {
    
    let model: TimelineContentItemModel
    let likeCallback: () -> Void
    let commentCallback: () -> Void
    
    let like = "Like"
    let comment = "Commnet"
    let frame = CGFloat(55.0)
    let space = CGFloat(12.0)
    
    
    var body: some View {
        HStack(alignment: .top, spacing: space) {
            Image(model.sender?.avatar ?? "")
                .resizable()
                .frame(width: frame, height: frame)
            VStack(alignment: .leading, spacing: 10) {
                Text(model.sender?.nick ?? "")
                    .bold()
                Text(model.content ?? "")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .layoutPriority(1)
                
                if let images = model.images, !images.isEmpty {
                    ImageView(image: images)
                }

                HStack() {
                    Button {
                        likeCallback()
                    } label: {
                        Text(like)
                    }
                    Button {
                        commentCallback()
                    } label: {
                        Text(comment)
                    }
                }.buttonStyle(.bordered)
                if let comments = model.comments {
                    VStack {
                        ForEach(comments) { comment in
                            CommentView(name: comment.sender.username, content: comment.content)
                        }
                    }
                }
            }
        }
        
    }
}
