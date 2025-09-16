//
//  CategoryCardView.swift
//  StorytelClone
//
//  Created by Esma Nur Arslan on 10.09.2025.
//

import SwiftUI

struct CategoryCardView: View {
    
    let category: SearchCategory
    
    var body: some View {
        ZStack(alignment: .topLeading){
            RoundedRectangle(cornerRadius: 3)
                .fill(category.color)
            Text(category.title)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding()
                
                
        }
        .frame(height: 120)
        .onTapGesture {
            print("\(category.title) tapped")
        }
    }
}

#Preview {
    CategoryCardView(category: sampleCategories[0])
}
