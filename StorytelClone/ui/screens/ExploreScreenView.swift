//
//  ContentView.swift
//  StorytelClone
//
//  Created by Esma Nur Arslan on 10.09.2025.
//

import SwiftUI

struct ExploreScreenView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Keşfet Ekranı")
                                    .font(.largeTitle)
                                    .padding()
            }
            .navigationBarTitle("Keşfet", displayMode: .inline)
            .navigationBarItems(trailing:
                            Button(action: {
                                // Zil ikonu tıklama işlemi
                                print("Zil tıklandı")
                            }) {
                                Image(systemName: "bell")
                                    .foregroundColor(.white)
                            }
                        )
        }
       
    }
}

struct ExploreScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()  
    }
}
