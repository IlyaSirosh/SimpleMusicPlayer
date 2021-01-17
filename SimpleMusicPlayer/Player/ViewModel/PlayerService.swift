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
    
    func play(){
        
    }
    
    func pause(){
        
    }
    
    func nextSong(){
        
    }
    
    func prevSong(){
        
    }
}

extension PlayerService {

    enum PlayerState {
        case playing, paused, nothingToPlay
    }
}
