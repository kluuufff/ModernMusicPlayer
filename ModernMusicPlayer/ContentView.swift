//
//  ContentView.swift
//  ModernMusicPlayer
//
//  Created by Kluf on 20.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ScreenSampleView(titleText: "remixes", firstColor: [242,255,189,0.31], secondColor: [255,247,51,1])
            ScreenSampleView(titleText: "likes", firstColor: [210,255,189,0.31], secondColor: [210,255,189,1])
            ScreenSampleView(titleText: "library", firstColor: [189,200,255,0.31], secondColor: [189,200,255,1])
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .background(Color.background
            .ignoresSafeArea(.all))
    }
}

#Preview {
    ContentView()
}

struct ScreenSampleView: View {
    
    var titleText: String
    var firstColor: [Double]
    var secondColor: [Double]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(titleText)
                .textCase(.uppercase)
                .font(.custom("SFProDisplay-Ultralight", size: 72))
                .foregroundStyle(
                    LinearGradient(
                        colors: [Color(red: firstColor[0]/255, green: firstColor[1]/255, blue: firstColor[2]/255, opacity: firstColor[3]),Color(red: secondColor[0]/255, green: secondColor[1]/255, blue: secondColor[2]/255, opacity: secondColor[3])],
                    startPoint: .leading,
                    endPoint: .trailing)
                )
            
            Spacer()
            
            Text("Song Name")
                .foregroundStyle(.white)
                .font(.custom("SFProDisplay-Black", size: 38))
                .padding(.bottom)
            Text("Artist Name")
                .foregroundStyle(.white)
                .font(.custom("SFProDisplay-Bold", size: 18))
                .padding(.bottom, 3)
            Text("Album Name")
                .foregroundStyle(.white)
                .font(.custom("SFProDisplay-Regular", size: 14))
                .padding(.bottom, 3)
            Text("03:14")
                .foregroundStyle(.white)
                .font(.custom("SFProDisplay-Bold", size: 18))
                .padding(.bottom, UIScreen.main.bounds.width / 6.5)
        }
        .padding(.top, UIScreen.main.bounds.width / 2.5)
    }
}
