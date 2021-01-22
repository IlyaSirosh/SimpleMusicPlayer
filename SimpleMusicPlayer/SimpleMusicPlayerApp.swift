//
//  SimpleMusicPlayerApp.swift
//  SimpleMusicPlayer
//
//  Created by Illya Sirosh on 17.01.2021.
//

import SwiftUI

@main
struct SimpleMusicPlayerApp: App {
    var body: some Scene {
        WindowGroup {
            ZStack{
                Color("backgroundColor")
                    .ignoresSafeArea()
                PlayerView()
            }
            
        }
    }
}
