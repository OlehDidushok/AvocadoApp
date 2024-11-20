//
//  RecipeRatingView.swift
//  AvocadoApp
//
//  Created by Oleh on 20.11.2024.
//

import SwiftUI

struct RecipeRatingView: View {
     // MARK: PROPERTIES
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundStyle(Color.yellow)
            }
        }
    }
}

#Preview {
    RecipeRatingView(recipe: recipesData[0])
}
