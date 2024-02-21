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
            RemixesView(titleText: "remixes", firstColor: [242,255,189,0.31], secondColor: [255,247,51,1])
            OtherViews(titleText: "likes", firstColor: [210,255,189,0.31], secondColor: [210,255,189,1])
            OtherViews(titleText: "library", firstColor: [189,200,255,0.31], secondColor: [189,200,255,1])
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .background(Color.background
            .ignoresSafeArea(.all))
    }
}

#Preview {
    ContentView()
}

struct RemixesView: View {
    
    var titleText: String
    var firstColor: [Double]
    var secondColor: [Double]
    
    var body: some View {
        GeometryReader {geo in
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
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("happy")
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [Color(red: 255/255, green: 205/255, blue: 247/255, opacity: 0.31),Color(red: 255/255, green: 51/255, blue: 222/255, opacity: 1)],
                                    startPoint: .leading,
                                    endPoint: .trailing)
                            )
                        Text("merry")
                        Text("sad")
                    }
                    .padding(.bottom, 5)
                    HStack {
                        Text("angry")
                        Text("funny")
                        Text("hurt")
                    }
                    .padding(.bottom, 5)
                    HStack {
                        Text("sensetive")
                        Text("upset")
                    }
                }
                .textCase(.uppercase)
                .font(.custom("SFProDisplay-Light", size: 24))
                .foregroundStyle(.white)
                
                Spacer()
                
                Text("Song Name")
                    .foregroundStyle(.white)
                    .font(.custom("SFProDisplay-Black", size: 38))
                    .padding(.bottom)
                Text("Artist Name")
                    .foregroundStyle(.white)
                    .font(.custom("SFProDisplay-Bold", size: 18))
                    .padding(.bottom, 1)
                Text("Album Name")
                    .foregroundStyle(.white)
                    .font(.custom("SFProDisplay-Regular", size: 14))
                    .padding(.bottom, 3)
                Text("03:14")
                    .foregroundStyle(.white)
                    .font(.custom("SFProDisplay-Black", size: 18))
                    .padding(.bottom)
                Text("90 242 212 Likes")
                    .foregroundStyle(.white)
                    .font(.custom("SFProDisplay-Thin", size: 18))
                
            }
            .padding(.top, UIScreen.main.bounds.width / 3)
            .padding(.bottom, UIScreen.main.bounds.width / 8)
        }
        .padding(.leading, UIScreen.main.bounds.width / 6)
    }
}

struct OtherViews: View {
    
    var titleText: String
    var firstColor: [Double]
    var secondColor: [Double]
    
    var body: some View {
        GeometryReader { geo in
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
                
                    .padding(.bottom, 50)
                
                Spacer()
                
                ScrollView(.vertical) {
                    Group {
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Laichzeid")
                                    .font(.custom("SFProDisplay-Thin", size: 28))
                                Spacer()
                                Text("4:45")
                                    .font(.custom("SFProDisplay-Regular", size: 17))
                            }
                            .foregroundStyle(Color.white)
                            Text("Rammstein, Herzeileid")
                                .font(.custom("SFProDisplay-Thin", size: 14))
                                .foregroundStyle(Color.white)
                        }
                        .padding(.bottom, 10)
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Laichzeid")
                                    .font(.custom("SFProDisplay-Thin", size: 28))
                                Spacer()
                                Text("4:45")
                                    .font(.custom("SFProDisplay-Regular", size: 17))
                            }
                            .foregroundStyle(Color.white)
                            Text("Rammstein, Herzeileid")
                                .font(.custom("SFProDisplay-Thin", size: 14))
                                .foregroundStyle(Color.white)
                        }
                        .padding(.bottom, 10)
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Laichzeid")
                                    .font(.custom("SFProDisplay-Thin", size: 28))
                                Spacer()
                                Text("4:45")
                                    .font(.custom("SFProDisplay-Regular", size: 17))
                            }
                            .foregroundStyle(Color.white)
                            Text("Rammstein, Herzeileid")
                                .font(.custom("SFProDisplay-Thin", size: 14))
                                .foregroundStyle(Color.white)
                        }
                        .padding(.bottom, 10)
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Laichzeid")
                                    .font(.custom("SFProDisplay-Thin", size: 28))
                                Spacer()
                                Text("4:45")
                                    .font(.custom("SFProDisplay-Regular", size: 17))
                            }
                            .foregroundStyle(Color.white)
                            Text("Rammstein, Herzeileid")
                                .font(.custom("SFProDisplay-Thin", size: 14))
                                .foregroundStyle(Color.white)
                        }
                        .padding(.bottom, 10)
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Laichzeid")
                                    .font(.custom("SFProDisplay-Thin", size: 28))
                                Spacer()
                                Text("4:45")
                                    .font(.custom("SFProDisplay-Regular", size: 17))
                            }
                            .foregroundStyle(Color.white)
                            Text("Rammstein, Herzeileid")
                                .font(.custom("SFProDisplay-Thin", size: 14))
                                .foregroundStyle(Color.white)
                        }
                        .padding(.bottom, 10)
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Laichzeid")
                                    .font(.custom("SFProDisplay-Thin", size: 28))
                                Spacer()
                                Text("4:45")
                                    .font(.custom("SFProDisplay-Regular", size: 17))
                            }
                            .foregroundStyle(Color.white)
                            Text("Rammstein, Herzeileid")
                                .font(.custom("SFProDisplay-Thin", size: 14))
                                .foregroundStyle(Color.white)
                        }
                        .padding(.bottom, 10)
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Laichzeid")
                                    .font(.custom("SFProDisplay-Thin", size: 28))
                                Spacer()
                                Text("4:45")
                                    .font(.custom("SFProDisplay-Regular", size: 17))
                            }
                            .foregroundStyle(Color.white)
                            Text("Rammstein, Herzeileid")
                                .font(.custom("SFProDisplay-Thin", size: 14))
                                .foregroundStyle(Color.white)
                        }
                        .padding(.bottom, 10)
                    }
                }
                
            }
            .padding(.top, UIScreen.main.bounds.width / 3)
        }
        .padding(.leading, UIScreen.main.bounds.width / 6)
        .padding(.trailing, UIScreen.main.bounds.width / 6)
    }
}
