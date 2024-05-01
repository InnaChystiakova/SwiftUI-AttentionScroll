//
//  ContentView.swift
//  AttentionScroll
//
//  Created by Inna Chystiakova on 01/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Scrolling(overlayBottomHeight: 50.0)
                .tabItem {
                    Label("First", systemImage: "star.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}

struct Scrolling: View {
    
    var overlayBottomHeight: CGFloat
    
    var body: some View {
        ScrollView {
            ForEach(1...100, id: \.self) {
                Text("\($0)")
                    .frame(maxWidth: .infinity)
                    .font(.custom("Verdana", size: 24))
                    .foregroundStyle(.gray)
            }
        }
        .overlay {
            VStack() {
                Spacer()
                BottomView()
                    .frame(width: UIScreen.main.bounds.width, height: overlayBottomHeight)
                    .opacity(0.8)
            }
        }
        .contentMargins(.bottom, overlayBottomHeight)
    }
}

struct BottomView: View {
    var body: some View {
        Color.red
    }
}

