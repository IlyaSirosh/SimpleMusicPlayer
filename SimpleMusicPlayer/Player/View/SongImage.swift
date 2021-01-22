//
//  SongImage.swift
//  SimpleMusicPlayer
//
//  Created by Illya Sirosh on 17.01.2021.
//

import SwiftUI

struct SongImage: View {
    var name: String?
    var isSongPlaying: Bool
    
    init(isSongPlaying: Bool, imageName name: String? = nil){
        self.isSongPlaying = isSongPlaying
        self.name = name
    }
    
    var body: some View {
        VStack {
            Rectangle()
                .aspectRatio(1, contentMode: .fit)
                .foregroundColor(Color("backgroundColor"))
                .cornerRadius(Const.cornerRadius)
                .overlay(imageView)
                .clipped()
                .shadow(color: .secondary, radius: Const.shadowRadius, x: 0, y: Const.shadowYOffset)
                .scaleEffect(imageScale)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .animation(.easeOut(duration: 0.25))

    }
    
    var imageScale: CGFloat{
        isSongPlaying ? Const.imageScaleWhilePlaying : Const.imageScaleWhilePaused
    }
    
    var shadowYOffset: CGFloat {
        isSongPlaying ? 30 : 10
    }
    

    
    var imageView: some View {
        if let imageName = name {
            return AnyView(
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
        } else {
            return AnyView(
                Image(systemName: "music.note")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color("backgroundTintColor"))
                    .padding()
            )
        }
    }
    
    struct Const {
        static let imageScaleWhilePlaying: CGFloat = 0.9
        static let imageScaleWhilePaused: CGFloat = 0.6
        static let cornerRadius: CGFloat = 15
        static let shadowRadius: CGFloat = 30
        static let shadowYOffset: CGFloat = 15
    }
}

struct SongImage_Previews: PreviewProvider {
    static var previews: some View {
        SongImage(isSongPlaying: false)
            .preferredColorScheme(.dark)
    }
}
