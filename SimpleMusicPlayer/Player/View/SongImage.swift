//
//  SongImage.swift
//  SimpleMusicPlayer
//
//  Created by Illya Sirosh on 17.01.2021.
//

import SwiftUI

struct SongImage: View {
    var name: String?
    
    init(with name: String? = nil){
        self.name = name
    }
    
    var body: some View {
        GeometryReader { geometry in
            
            ZStack{
                Rectangle()
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundColor(.clear)
                
                Rectangle()
                    .frame(width: 0.6 * geometry.size.width, height: 0.6 * geometry.size.width)
                    .foregroundColor(.secondary)
                    .overlay(imageView)
                    .clipped()
                    .cornerRadius(15)

            }
        }
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
                    .foregroundColor(.secondary)
                    .padding(30)
            )
        }
    }
}

struct SongImage_Previews: PreviewProvider {
    static var previews: some View {
        SongImage()
            .preferredColorScheme(.light)
    }
}
