//
//  TabItemView.swift
//  StorytelClone
//
//  Created by Esma Nur Arslan on 10.09.2025.
//

import Foundation
import SwiftUI

struct TabItemView: View {
    
    var iconName: String
    var title: String
    var isSelected: Bool
    var view: AnyView
    
    var body: some View {
      
        VStack{
            Image(systemName: iconName)
                .foregroundColor(isSelected ? Color.orange : Color.white)
            Text(title)
                .foregroundColor(isSelected ? Color.orange : Color.white)
        }
    }
}
