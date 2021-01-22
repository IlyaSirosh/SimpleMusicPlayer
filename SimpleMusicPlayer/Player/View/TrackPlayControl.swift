//
//  TrackControlView.swift
//  SimpleMusicPlayer
//
//  Created by Illya Sirosh on 22.01.2021.
//

import SwiftUI

struct TrackPlayControl: View {
    var isPlayingSong: Bool
    var prev: () -> Void
    var togglePlay: () -> Void
    var next: () -> Void
    
    
    
    var body: some View {
        HStack {

            Button(action: prev) {
                Image(systemName: "backward.fill")
                    .font(.title)
                    .frame(maxWidth: .infinity)
            }

            Button(action: togglePlay) {
                Image(systemName: isPlayingSong ? "pause.fill" : "play.fill")
                    .font(.system(size: Const.playButtonHeight))
                    .frame(maxWidth: .infinity)
            }

            
            Button(action: next) {
                Image(systemName: "forward.fill")
                    .font(.title)
                    .frame(maxWidth: .infinity)
            }
        }
        .frame(height: Const.playButtonHeight)
        .padding()
        .foregroundColor(.primary)
        
    }
    
    struct Const {
        static let playButtonHeight: CGFloat = 64
    }
}

struct TrackControlView_Previews: PreviewProvider {
    static var previews: some View {
        TrackPlayControl(isPlayingSong: true, prev: {}, togglePlay: {}, next: {})
    }
}
