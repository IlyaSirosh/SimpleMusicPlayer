//
//  PlayerView.swift
//  SimpleMusicPlayer
//
//  Created by Illya Sirosh on 17.01.2021.
//

import SwiftUI

struct PlayerView: View {
    @ObservedObject var service = PlayerService()
    @State var trackTime: Float = 10.0
    var duration: Float = 100.0
    
    @State var volume: Float = 50.0
    var maxVolume: Float = 100.0
    
    var body: some View {
        VStack {
            SongImage(isSongPlaying: service.isPlayingSong
//                      ,
//                      imageName: "gunsnroses"
            )
            
            HStack{
                VStack(alignment: .leading) {
                    Text("Song Name")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("Author")
                        .font(.title2)
                }
                Spacer()
            }
    
        
            TrackSlider(currentTime: $trackTime, timeLeft: .constant(4.41), duration: .constant(duration))
         
            
            TrackPlayControl(isPlayingSong: service.isPlayingSong,
                             prev: service.prevSong,
                             togglePlay: service.togglePlaying,
                             next: service.nextSong)
                .padding()
                .foregroundColor(.primary)
  
            Slider(value: $volume, in: 0...maxVolume, minimumValueLabel: Image(systemName: "speaker.wave.1.fill"), maximumValueLabel: Image(systemName: "speaker.wave.3.fill")) {
                Text("Volume")
            }
                .accentColor(.secondary)
                .padding(.vertical)

        }
        .padding()

    }
    
    

}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
            .preferredColorScheme(.dark)
    }
}
