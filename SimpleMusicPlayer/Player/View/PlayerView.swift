//
//  PlayerView.swift
//  SimpleMusicPlayer
//
//  Created by Illya Sirosh on 17.01.2021.
//

import SwiftUI
import UIKit

struct PlayerView: View {
    @ObservedObject var service = PlayerService()
    @State var trackTime: Float = 0.0
    var duration: Float = 100.0
    
    @State var volume: Float = 50.0
    var maxVolume: Float = 100.0
    
    var body: some View {
        VStack {
            SongImage(with: "gunsnroses")
            
            Text("Song Name")
                .font(.title)
        
            
            Slider(value: $trackTime, in: 0...duration)
            
            HStack {
                Image(systemName: "backward.fill")
                Image(systemName: "play.fill")
                Image(systemName: "forward.fill")
            }
            
            Slider(value: $volume, in: 0...maxVolume)
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
