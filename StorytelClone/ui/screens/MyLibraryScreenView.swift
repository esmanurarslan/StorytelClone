//
//  MyLibraryScreenView.swift
//  StorytelClone
//
//  Created by Esma Nur Arslan on 10.09.2025.
//

import SwiftUI

struct MyLibraryScreenView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Kitaplığım Ekranı")
                                    .font(.largeTitle)
                                    .padding()
            }
            .navigationBarTitle("Kitaplığım", displayMode: .inline)
        }
    }
}

#Preview {
    MainTabView(selectedTab: 2)
}
