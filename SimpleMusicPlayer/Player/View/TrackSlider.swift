//
//  TrackSlider.swift
//  SimpleMusicPlayer
//
//  Created by Illya Sirosh on 22.01.2021.
//

import SwiftUI

struct TrackSlider: View {
    @Binding var currentTime: Float
    @Binding var timeLeft: Float
    @Binding var duration: Float

    
    var body: some View {
        VStack{
            Slider(value: $currentTime, in: 0...duration)
                .accentColor(.secondary)
            HStack{
                Text(String(format: "%.2f", currentTime))
                    .font(.caption)
                Spacer()
                Text(String(format: "-%.2f", timeLeft))
                    .font(.caption)
            }
        }.padding(.vertical)    }
}

struct TrackSlider_Previews: PreviewProvider {
    static var previews: some View {
        TrackSlider(currentTime: .constant(2.34), timeLeft: .constant(4.41), duration: .constant(12))
    }
}
