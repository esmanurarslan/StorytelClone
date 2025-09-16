//
//  ContentView.swift
//  StorytelClone
//
//  Created by Esma Nur Arslan on 10.09.2025.
//

import SwiftUI

struct ExploreScreenView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Explore")
                }
            
            
        }
    }
}

#Preview {
    ExploreScreenView()
}
