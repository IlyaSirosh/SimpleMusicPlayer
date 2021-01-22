//
//  PlayerService.swift
//  SimpleMusicPlayer
//
//  Created by Illya Sirosh on 17.01.2021.
//

import Foundation

class PlayerService: ObservableObject {
    @Published var currentSong: Song?
    @Published var state: PlayerState = PlayerState.nothingToPlay
    
    func togglePlaying(){
        switch state {
        case .nothingToPlay, .paused:
            state = .playing
        case .playing:
            state = .paused
        }
    }

    
    func nextSong(){
        
    }
    
    func prevSong(){
        
    }
    
    var isPlayingSong: Bool {
        state == .playing
    }
}

extension PlayerService {

    enum PlayerState {
        case playing, paused, nothingToPlay
    }
}
