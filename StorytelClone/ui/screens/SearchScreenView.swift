//
//  SearchScreenView.swift
//  StorytelClone
//
//  Created by Esma Nur Arslan on 10.09.2025.
//

import SwiftUI

struct SearchScreenView: View {
    
    @State private var searchText: String = ""
    
    let categoryTitles: [String] = [
            "ROMAN", "KURGU DIŞI", "KİŞİSEL GELİŞİM", "KLASİKLER", "ÇOCUK",
            "GENÇLİK", "POLİSİYE", "BİLİM KURGU & FANTASTİK", "İŞ KİTAPLARI",
            "ÖYKÜ", "BİYOGRAFİ", "TARİH", "ŞİİR & DRAMA", "DİL EĞİTİMİ",
            "ÖNE ÇIKANLAR", "E-KİTAPLAR", "PODCASTLER", "KİTAP SERİLERİ",
            "YAZARLAR", "SESLENDİRENLER"
        ]
    
    var sampleCategories: [SearchCategory] {
           return categoryTitles.enumerated().map { (index, title) in
               let color = AppColors.allColors[index % AppColors.allColors.count]
               return SearchCategory(title: title, color: color)
           }
       }
    
    private let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 16)
        , GridItem(.flexible(), spacing: 16)
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(alignment: .leading, spacing: 16){
                    
                    Text("Kategoriler")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.top)
                        
                    LazyVGrid(columns: columns, spacing: 16){
                        ForEach(sampleCategories){ category in
                            CategoryCardView(category: category)
                            
                        }
                    }
                    
                }
                .padding(.horizontal, 8)
                .navigationBarTitle("Ara", displayMode: .inline)
                .searchable(text: $searchText, prompt: "ARA")
            }
        }
    }
}

#Preview {
    MainTabView(selectedTab: 1) }
