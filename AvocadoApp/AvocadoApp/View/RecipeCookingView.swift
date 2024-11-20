//
//  RecipeCookingView.swift
//  AvocadoApp
//
//  Created by Oleh on 20.11.2024.
//

import SwiftUI

struct RecipeCookingView: View {
    // MARK: PROPERTIES
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Prep.: \(recipe.preparation)")
            }
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }
        }
        .font(.footnote)
        .foregroundStyle(Color.gray)
    }
}

#Preview {
    RecipeCookingView(recipe: recipesData[0])
}
