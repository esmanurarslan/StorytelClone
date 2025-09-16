//
//  MyProfileScreenView.swift
//  StorytelClone
//
//  Created by Esma Nur Arslan on 10.09.2025.
//

import SwiftUI

struct MyProfileScreenView: View {
    @State private var isKidsModeOn = false
    let userName = "Esma Nur Arslan"
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 30){
                    
                    VStack {
                        
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 120))
                            .foregroundColor(.secondary)
                            .padding(.top, 8)
                        
                        Text(userName)
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.top, 4)
                         
                        
                        Button(action: {
                            print("Profili düzenle butonuna tıklandı!")
                        }) {
                            Text("Profili düzenle")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 18)
                                .overlay(Capsule().stroke(Color.secondary, lineWidth: 1))
                                .foregroundColor(.white)
                        }
                    }
                    
                    VStack(spacing: 25){
                        
                        //ProfileRow
                        
                    }
                }
                
            }
            
            
            .navigationBarTitle("Profilim", displayMode: .inline)
            .navigationBarItems(trailing:
                            Button(action: {
                                print("Ayarlar tıklandı")
                            }) {
                                Image(systemName: "gearshape")
                                    .foregroundColor(.white)
                            }
                        )
            
        }    }
}

#Preview {
    MainTabView(selectedTab: 3)
    //MyProfileScreenView()
}
